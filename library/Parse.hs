{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Parse where

import qualified Data.ByteString.Lazy as BL
import Data.Csv
import qualified Data.Map.Strict as M
import Data.Time.Calendar (Day)
import qualified Data.Vector as V
import qualified Text.Pretty.Simple as P

import Types

ticksIO :: IO BL.ByteString
ticksIO = BL.readFile "ticks.csv"

readTicks :: IO Trip
readTicks = do
  ticksBS <- ticksIO
  case decodeByName ticksBS of
    Left err -> do
      putStrLn err
      return $ Trip M.empty
    Right (_, v) -> return $ datedClimbsToTrip v

-- main :: IO ()
--         -- let print' :: DatedClimb -> IO ()
--         --     print' = P.pPrint
--         --  in print' p

data DatedClimb = DatedClimb Day PitchClimb
  deriving(Show)

datedClimbsToTrip :: V.Vector DatedClimb -> Trip
datedClimbsToTrip vect =
  Trip . fmap noExtraDayData $ V.foldl addClimb M.empty vect
  where addClimb m (DatedClimb day climb)
          = M.alter (appendClimb climb) day m
        appendClimb climb Nothing = Just [climb]
        appendClimb climb (Just climbs) = Just $ climb:climbs


instance FromNamedRecord DatedClimb where
  parseNamedRecord r = do
    name <- r .: "Route" :: Parser String
    gradeStr <- r .: "Rating" :: Parser String
    styleStr <- r .: "Style" :: Parser String
    leadStyleStr <- r .: "Lead Style" :: Parser String
    dateStr <- r .: "Date" :: Parser String
    pitchesStr <- r .: "Pitches" :: Parser String
    routeTypeStr <- r .: "Route Type" :: Parser String
    let sty =
          case styleStr of
            "Lead" -> stringToStyle leadStyleStr
            "TR" -> FILL_ME_IN
            "Follow" -> FILL_ME_IN
            "Solo" -> Onsight -- ^ ONLY WORKS FOR ME
            "" -> FILL_ME_IN
            _ -> error $ "unexpected styleString from csv: " ++ styleStr
    let pitchSuffix = if (read pitchesStr :: Int) > 1
          then "  !!!MULTIPITCH!!! EXPAND ME!!! (" ++ pitchesStr ++ ")"
          else ""
    return $ DatedClimb (read dateStr)
      (PitchClimb (name ++ pitchSuffix) NoClimbData
        (stringToGradeType gradeStr routeTypeStr) sty)
    -- case style of
    --   "" -> fail "empty style column"
    --   _ -> return $ DatedClimb date (PitchClimb name grade style)


stringToStyle :: String -> Style
stringToStyle "Onsight" = Onsight
stringToStyle "Flash" = Flash
stringToStyle "Redpoint" = Redpoint
stringToStyle "Pinkpoint" = Semisend
stringToStyle "Fell/Hung" = Fail
stringToStyle "" = FILL_ME_IN
stringToStyle s = error $ "incorrect lead style string" ++ s


intPrefix :: String -> Int
intPrefix n = read . takeWhile (`elem` ['0'..'9']) $ n

stringToGradeType :: String -> String -> GradeType
stringToGradeType "V-easy" _ = Boulder 0
stringToGradeType ('V':n) _ = Boulder $ intPrefix n
stringToGradeType g@('5':'.':_) ty = RopedClimb (readRopedType ty) (readYosGrade g)
stringToGradeType ('C':n) _ = AidClimb (intPrefix n)
stringToGradeType a b = error $ a ++ b

readRopedType :: String -> RopedClimbType
readRopedType str =
  case break (== ',') str of
    ("TR", ", Boulder") -> TradClimb
    ("Sport", "") -> SportClimb
    ("Sport", _) -> MixedClimb
    ("Trad", "") -> CrackClimb
    ("Trad", _) -> TradClimb
    ("TR", _) -> SportClimb
    ("Boulder", _) -> error "Boulder on rope?"
    _ -> error $ "readRopedType err: " ++ str

readModifier :: String -> Modifier
readModifier ('a':'/':'b':_) = Minus
readModifier ('a':_) = A
readModifier ('b':'/':'c':_) = Even
readModifier ('b':_) = B
readModifier ('c':'/':'d':_) = Plus
readModifier ('c':_) = C
readModifier ('d':_) = D
readModifier ('+':_) = Plus
readModifier ('-':_) = Minus
readModifier _ = Even

readYosGrade :: String -> YosGrade
readYosGrade ('5':'.':gr) =
  let (n,suf) = break (`notElem`['0'..'9']) gr
   in Five (read n) (readModifier suf)
readYosGrade _ = error "malformed YDS grade maybe"

