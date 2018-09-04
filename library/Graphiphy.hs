{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE TypeFamilies #-}


module Graphiphy where

import qualified Data.List as L
-- import Data.Map.Strict (Map)
import qualified Data.Map.Strict as M
import qualified Data.Time.Calendar as T
import Data.Time.Calendar (Day)
import Diagrams.Backend.SVG.CmdLine
import Diagrams.Prelude hiding (Style, offset)
import qualified Diagrams.TwoD.Path.Boolean as B


import Types
import qualified Ticks

-- import Debug.Trace as Tr

graphmain :: IO ()
graphmain = do
  mainWith (bgFrame 0.5 white $ draw Ticks.ticks)

draw :: Trip -> Diagram B
draw (Trip trip)
  | Just (minDate, _) <- M.lookupMin trip
  = let dataDrawing = M.foldrWithKey' (drawPositionedDay minDate) mempty trip
     in hsep 0.5 [axis, dataDrawing]
draw _ = mempty

axis :: Diagram B
axis = hsep 0.2 [abcdAxis, boulderAxis]
  where abcdAxis =
          (mconcat . fmap drawRoped $ abcdGrades) ||| hbar
        abcdGrades = fmap (`Five` Even) [3,6,7,8,9]
          ++ [Five i x | i <- [10,11,12], x <- [A,B,C,D]]
          ++ [Five 13 A]
        -- pmGrades = [Five i x | i <- [10,11,12], x <- [Minus, Even, Plus]]
        drawRoped grade@(Five _ m) =
          ( alignedText 1 0 (cleanShowYosGrade grade)
            # ( if m == A
                then translateY (-0.03) . scale 0.15
                else translateY (-0.02) . scale 0.10 )
          ||| strutX 0.03 ||| axisTick )
          # translateY (gradeHeight grade)

        hbar = fromSegments [straight (r2 (0,maxHeight))]
          # lwG 0.02 # translateX (-0.1)

        boulderAxis = hbar ||| (mconcat . fmap drawBoulder $ [0..8])
        drawBoulder grade =
          (axisTick ||| strutX 0.03
            ||| alignedText 0 0.5 ("V" ++ show grade)
              # scale 0.15 # translateY (-0.035) )
          # translateY (boulderGradeHeight grade)

        axisTick = hrule 0.15 # lwG 0.02

-- (also fold-ready)
drawPositionedDay :: Day -> Day -> ClimbingDay -> Diagram B -> Diagram B
drawPositionedDay minDay currentDay day diagram
  = diagram <> drawDay currentDay day # translateX xDateDiff
    where xDateDiff = (1/3) * fromIntegral (T.diffDays currentDay minDay)

drawDay :: Day -> ClimbingDay -> Diagram B
drawDay date (ClimbingDay extra pitches) =
  dayMonth <> axisCopy
    <> (mconcat . map (uncurry drawBoulderGrade) $ collatedBoulders)
    <> (mconcat . map (uncurry drawYosGrade) $ collatedPitches)
  -- NOTE: ignores boulders for now
  where collatedPitches :: [(YosGrade, [(Style, RopedClimbType)])]
        collatedPitches =
          collate . concatMap organize $ pitches
        organize (PitchClimb _ _ (RopedClimb ty grade) sty) = [(grade, (sty, ty))]
        organize _ = []

        collatedBoulders :: [(VGrade, [Style])]
        collatedBoulders =
          collate . concatMap organize' $ pitches
        organize' (PitchClimb _ _ (Boulder grade) sty) = [(grade, sty)]
        organize' _ = []

        dayMonth = if writeMonth extra
          then writeDayMonth date
          else writeDay date
        axisCopy = if copyAxis extra
          then axis # translateX (-1.0)
          else mempty

collate :: Ord a => [(a,b)] -> [(a,[b])]
collate = fmap collateOne . L.groupBy fstEq . L.sortBy fstComp
  where collateOne xs@((g,_):_) = (g, fmap snd xs)
        collateOne _ = error "empty element of L.groupBy - invariant violated"
        fstComp a b = fst a `compare` fst b
        fstEq a b = fst a == fst b

writeDay :: Day -> Diagram B
writeDay date = text (show day) # scale 0.15 # translateY (-0.15)
  where (_, _, day) = T.toGregorian date

writeDayMonth :: Day -> Diagram B
writeDayMonth date =
  vsep 0.35
    [ text (show day) # scale 0.15
    , topLeftText (showMonth month) # scale 0.35 # translateX (-0.05)
    ] # translateY (-0.15)
  where (_, month, day) = T.toGregorian date

showMonth :: Int -> String
showMonth 1 = "January"
showMonth 2 = "February"
showMonth 3 = "March"
showMonth 4 = "April"
showMonth 5 = "May"
showMonth 6 = "June"
showMonth 7 = "July"
showMonth 8 = "August"
showMonth _ = "Whaaa"

drawYosGrade :: YosGrade -> [(Style, RopedClimbType)] -> Diagram B
drawYosGrade grade pitches = drawYosGrade' (reverse $ L.sort pitches) 0
  where drawYosGrade' [] _ = mempty
        drawYosGrade' ((sty,ty):ps) offset
          = styleTypeBar offset grade sty ty # translateX (offset / 2)
            <> drawYosGrade' ps (offset + repetitionOffset)

drawBoulderGrade :: VGrade -> [Style] -> Diagram B
drawBoulderGrade grade problems =
  drawBoulderGrade' (reverse $ L.sort problems) 0
  where drawBoulderGrade' [] _ = mempty
        drawBoulderGrade' (sty:stys) offset
          = boulderStyleBar offset grade sty # translateX offset
            <> drawBoulderGrade' stys (offset + repetitionOffset)

repetitionOffset :: Double
repetitionOffset = 1/30

barWidth :: Double
barWidth = 0.30

styleTypeBar :: Double -> YosGrade -> Style -> RopedClimbType -> Diagram B
styleTypeBar offset grade sty ty = cap <> if emphasize then bar else mempty
  where cap = styleLine sty # fc (typeColor ty)
          # translateY (gradeHeight grade + offset)
        emphasize = sty `elem` [Onsight, Flash, Redpoint]
          && ty `elem` [TradClimb, CrackClimb]
        bar = rect barWidth (gradeHeight grade + offset)
          # alignB
          # lwG 0
          # fcA (typeColor CrackClimb `withOpacity` 0.15)

boulderStyleBar :: Double -> VGrade -> Style -> Diagram B
boulderStyleBar offset grade sty =
  boulderStyleLine sty # fc boulderColor
    # translateY (boulderGradeHeight grade + offset)

boulderColor :: Colour Double
boulderColor = sRGB24read "0e8306"

boulderStyleLine :: Style -> Diagram B
boulderStyleLine sty = styleLine sty # fc boulderColor # lc boulderColor

styleLine :: Style -> Diagram B
styleLine sty
  | sty `elem` [Onsight, Flash] =
     strokePath (B.union Winding (rect barWidth repetitionOffset <> dopenessMarker))
       # lwG 0.005 # lc black
  where dopenessMarker =
          case sty of
            Onsight -> circle (1/30)
            Flash -> square (1/15)
            _ -> mempty
styleLine sty = failureLine # lwG 0.005 # lc black # center
--  where rectangle = (center . strokeT . fromOffsets) [r2 (0.25,0)]
--          # lwG repetitionOffset # failureEdit
  where failureLine =
          case sty of
            Semisend -> semiSendBar
            Fail -> failBar
            Redpoint -> rect barWidth repetitionOffset
            _ -> mempty
        w = barWidth
        semiSendBar = hsep (1/4 * w * 1/2) $ replicate 3
          (rect (3/4 * w * 1/3) repetitionOffset)
        failBar = hsep (4/5 * w * 1/3) $ replicate 4
          (rect (1/5 * w * 1/4) repetitionOffset)
          -- case sty of
          --   Semisend -> diagram # dashingN [0.0035, 0.001] 0
          --   Fail -> diagram # dashingN [0.001, 0.0025] 0
          --   _ -> diagram


typeColor :: RopedClimbType -> Colour Double
typeColor CrackClimb = sRGB24read "ff5501"
typeColor TradClimb = sRGB24read "f80c34"
typeColor MixedClimb = sRGB24read "9700d2"
typeColor SportClimb = sRGB24read "1517ea"

gradeHeight :: YosGrade -> Double
gradeHeight (Five i m)
  | i < 10 = (1/8) + 0.75 ^ (10 - i)
  | i == 10 = 1 + modifierHeight m
  | i == 11 = 2 + 2 * modifierHeight m
  | i >= 12 = 4 + (fromIntegral i - 12) + modifierHeight m
  | otherwise = error "weird yos grade"

maxHeight :: Double
maxHeight = gradeHeight (Five 13 A)

boulderGradeHeight :: VGrade -> Double
boulderGradeHeight 0 = 1/8
boulderGradeHeight i = (fromIntegral i / 8) * maxHeight

modifierHeight :: Modifier -> Double
modifierHeight A = 1/8
modifierHeight B = 3/8
modifierHeight C = 5/8
modifierHeight D = 7/8
modifierHeight Plus = 5/6
modifierHeight Minus = 1/6
modifierHeight Even = 0.5

