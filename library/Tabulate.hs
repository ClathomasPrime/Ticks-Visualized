
module Tabulate where

import qualified Data.List as L
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as M
import qualified Data.Time.Calendar as T
import Data.Time.Calendar (Day)
import Diagrams.Backend.SVG.CmdLine
import Diagrams.Prelude hiding (Style, offset)
import qualified Diagrams.TwoD.Path.Boolean as B


import Types
import qualified Ticks

type Res = (Map VGrade Int, Map YosGrade Int, Map YosGrade Int)

tabulated :: Res
tabulated = tabulate . fromTrip $ Ticks.ticks

tabulate :: Map a ClimbingDay -> Res
tabulate = M.foldl' tab1 (mempty, mempty, mempty)
  where tab1 u day = L.foldl' tab u (dayPitches day)
        tab (b, t, s) pitch =
          if style pitch `elem` [Redpoint, Flash, Onsight]
            then
              case gradeType pitch of
                RopedClimb ty grade ->
                  if ty `elem` [TradClimb, CrackClimb]
                    then (b, t `incr` grade, s)
                    else (b, t, s `incr` grade)
                Boulder grade -> (b `incr` grade, t, s)
            else (b, t, s)

incr :: (Num n, Ord k) => Map k n -> k -> Map k n
incr m k = M.alter phi k m
  where phi Nothing = Just 1
        phi (Just n) = Just $ n+1
