{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Types where

import Data.Map.Strict (Map)
import Data.Time.Calendar (Day)

newtype Trip = Trip { fromTrip :: Map Day ClimbingDay }
  deriving(Show)

data PitchClimb = PitchClimb
  { climbName :: String
  , extraData :: ClimbExtraData
  , gradeType :: GradeType
  , style :: Style
  } deriving(Show, Eq)

data Style
  = Fail
  | Semisend            -- ^ No falls or hangs, toprope/pinkpoint/follow
  | Redpoint -- ^ "Complete" send, not a onsight/flash
  | Flash
  | Onsight
  | FILL_ME_IN
  deriving(Show, Eq, Ord)

data ClimbExtraData
  = NoClimbData
  | Story String
  | URL
  deriving(Show, Eq)

noExtraDayData :: [PitchClimb] -> ClimbingDay
noExtraDayData ps = ClimbingDay (DayExtraData False False) ps

defaultDayData :: DayExtraData
defaultDayData = DayExtraData False False

data ClimbingDay = ClimbingDay
  { dayExtraData :: DayExtraData
  , dayPitches :: [PitchClimb]
  } deriving(Show, Eq)

data DayExtraData = DayExtraData
  { copyAxis :: Bool
  , writeMonth :: Bool
  } deriving(Show, Eq)

data GradeType
  = Boulder VGrade
  | RopedClimb RopedClimbType YosGrade
  | AidClimb CleanAidGrade
  deriving(Show, Eq)

data RopedClimbType
  = SportClimb  -- ^ Fully bolt protected
  | MixedClimb  -- ^ Involves gear placements, but cruxes are bolt protected
  | TradClimb   -- ^ Protected by gear, but cruxes are not crack climbing
  | CrackClimb  -- ^ Trad where the crux is crack climbing
  deriving(Show, Eq, Ord)

data Modifier = A | Minus | B | Even | C | Plus | D
  deriving(Show, Eq, Ord)

data YosGrade = Five Int Modifier
  deriving(Show, Eq)

instance Ord YosGrade where
  compare (Five i m) (Five j n)
    | i == j = compare m n
    | otherwise = compare i j

-- instance Show YosGrade where
--   show (Five i modif) = "5." ++ show i ++ show modif

cleanShowYosGrade :: YosGrade -> String
cleanShowYosGrade (Five i x)
  = "5." ++ show i ++ cleanShowModifier x

cleanShowModifier :: Modifier -> String
cleanShowModifier A = "a"
cleanShowModifier B = "b"
cleanShowModifier C = "c"
cleanShowModifier D = "d"
cleanShowModifier Plus = "+"
cleanShowModifier Minus = "-"
cleanShowModifier Even = ""

type VGrade = Int

type CleanAidGrade = Int

