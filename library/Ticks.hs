module Ticks (ticks) where

import Data.Time.Calendar (Day)
import qualified Data.Map.Strict as M

import Types

ticks :: Trip
ticks = Trip . M.fromList $ ticksData

ticksData :: [(Day, ClimbingDay)]
ticksData =
    [
        ( read "2017-12-28"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "The Standard"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Contrail"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Helicopter"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Scoop"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Full Circle"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Flash
                }
            , PitchClimb
                { climbName = "The Hobbit"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Flash
                }
            ]
        )
    ,

        ( read "2017-12-29"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Pasty Faced Weirdos"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Iron Claw"
                , extraData = NoClimbData
                , gradeType = Boulder 7
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The climb that wasn't called 40 feet of fun"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Making waves"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Blue"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2017-12-31"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Red Belly"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Ripple"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Rail Grind"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Mario"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Luigi"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Jaber Jaw"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Grape Ape"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Lab Rats"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Flash
                }
            ]
        )
    ,

        ( read "2018-01-03"
        ,
            ClimbingDay defaultDayData { writeMonth = True}
            [ PitchClimb
                { climbName = "Groove 2"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bumboy"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Hammerhead"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-01-04"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Sandbox"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Beach"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Silky"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Crisifix"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-01-05"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Popeye"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Wasp"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Man with a Slow Hand"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Honkey Tonkin'"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-01-08"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Tennessee Thong"
                , extraData = NoClimbData
                , gradeType = Boulder 7
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Swingers"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Wave"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "A Face in the Crowd"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Incredarete"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-01-27"
        ,
            ClimbingDay defaultDayData { copyAxis = True}
            [ PitchClimb
                { climbName = "Touch and Go"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Bonzo Dog Band"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Swing Low"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Eff Four"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Ass of Dog"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-01-28"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Dung Fu"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Tax Man"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-01-30"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Sail Away"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Minus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Clean and Jerk"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 C )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Left Ski Track"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Western Saga"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-01-31"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Dappled Mare"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Dappled Mare"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Dappled Mare"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Dappled Mare"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Minus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Overseer"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "White Lightning"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Flash
                }
            ]
        )
    ,

        ( read "2018-02-01"
        ,
            ClimbingDay defaultDayData { writeMonth = True}
            [ PitchClimb
                { climbName = "Double Cross"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Dogleg"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Championship Wrestling"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Dandelion"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Clean and Jerk"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-02-03"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Fisticuffs"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "SW Corner"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 6 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-02-04"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Hobbit Hole Offwidth"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Flash
                }
            , PitchClimb
                { climbName = "Leave it to Beaver"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 12 A )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-02-05"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Exorcist"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "It"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Walk on the Wild Side"
                , extraData = NoClimbData
                , gradeType = RopedClimb MixedClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Walk on the Wild Side"
                , extraData = NoClimbData
                , gradeType = RopedClimb MixedClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Right On"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Right On"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Right On"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-02-06"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Dynamo Hum"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Old Triangle Classic"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "False Hueco"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Flash
                }
            , PitchClimb
                { climbName = "False Hueco Traverse"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Flash
                }
            , PitchClimb
                { climbName = "White Rastafarian"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Flash
                }
            , PitchClimb
                { climbName = "North Overhang"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-02-08"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Illusion Dweller"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Stem Gem"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Fisticuffs"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Run For Your Life"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Tumbling Rainbow"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-02-09"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Alf's Arete"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Imaginary Voyage"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Surrealistic Pillar"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-02-13"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "False Up 20"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Flash
                }
            ]
        )
    ,

        ( read "2018-02-14"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Stichter Quits"
                , extraData = NoClimbData
                , gradeType = RopedClimb MixedClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Forbidden Paradise"
                , extraData = NoClimbData
                , gradeType = RopedClimb MixedClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Heart and Sole"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Stick to What"
                , extraData = NoClimbData
                , gradeType = RopedClimb MixedClimb ( Five 9 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "EBGB's"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Pope's Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-02-15"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Figures on a Landscape (aka Monkey on My Back)"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Figures on a Landscape (aka Monkey on My Back)"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Room To Shroom"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Gunsmoke"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Flash
                }
            , PitchClimb
                { climbName = "The Chube"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Flash
                }
            , PitchClimb
                { climbName = "Loose Lady"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-02-17"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Paralyzed"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Potatoe Chips"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Prophet"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 B )
                , style = Redpoint
                }
            ]
        )
    ,
        ( read "2018-02-18"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Potatoe Chips"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-02-20"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Claimjumpers Special"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 C )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Scorpions"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Sport Chimney"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 8 Even )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Sunny and Steep"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Steep Thrills"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Gimme Back My Bullets"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Mr Choad's Wild Ride"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 B )
                , style = Flash
                }
            ]
        )
    ,

        ( read "2018-02-21"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Cat in the Hat"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cat in the Hat"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cat in the Hat"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Rabbit's Arete"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-02-22"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Desert gold P1"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-02-26"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Brown Round Crack"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Peruvian Flake"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bachar Problem"
                , extraData = NoClimbData
                , gradeType = Boulder 7
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-03-03"
        ,
            ClimbingDay defaultDayData { writeMonth = True}
            [ PitchClimb
                { climbName = "The Angler"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Don't Leave Too Soon"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Low Tide"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Water Paintings"
                , extraData = NoClimbData
                , gradeType = Boulder 7
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-03-06"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Railroad Tracks"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Ruins Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Cave Route"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-03-08"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Airwolf"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Flash
                }
            ]
        )
    ,

        ( read "2018-03-09"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Jolly Rancher"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Spaghetti Western"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Steve's Wimpout"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-03-11"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Kelly's Arete"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bobcat in the Kiparoo"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Kill by Numbers"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-03-12"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Fist Crack"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Lanky"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Beer Belly"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Hand Crack"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cook the Patty"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Trouff"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "DK's Bulge"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bowling Ball"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-03-13"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "The Wave"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Crest"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Right of Anti-Future Plan"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Wills A Fire"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Down Climb"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-03-14"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Ankle Deep in Gasoline"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Flash
                }
            , PitchClimb
                { climbName = "Michelangelo"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Flash
                }
            , PitchClimb
                { climbName = "The Comedian"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Great White"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Epic V0"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-03-17"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Phone Booth"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Called on Account of Pain"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Beautiful Loser"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Chain Reaction"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Nameless Arête"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Tango Super Direct"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Semisend
                }
            ]
        )
    ,

        ( read "2018-03-20"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "The Horn"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The flake"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Rat Rock Traverse"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "cats corner"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cat Crack"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cat Arete"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-03-26"
        ,
            ClimbingDay defaultDayData { copyAxis = True}
            [ PitchClimb
                { climbName = "Meat Machine"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Cube Steaks"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Unnamed blocky corner to hands splitter"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-03-29"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "The Inhabitants"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Fuzz"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Rochambeau"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Serrator Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Layaway Plan"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Plus )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-03-29"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Fertile Crescent"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Big Guy"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Desert Vuarnet"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Plus )
                , style = Semisend
                }
            ]
        )
    ,

        ( read "2018-03-30"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "The Wave"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Keyhole Flake"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Supercrack of the Desert"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "International Affair"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 12 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Coyne Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 D )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-03-31"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Incredible Hand Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Ruby Flame"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Belly full of bad berries"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 13 Minus )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-04-03"
        ,
            ClimbingDay defaultDayData { writeMonth = True}
            [ PitchClimb
                { climbName = "Stolen Chimney"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Stolen Chimney"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Stolen Chimney"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Stolen Chimney"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-04-05"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Hayutake"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Charlie's Pillar"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Annunaki"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Plus )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Neat"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Lady Pillar"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Minus )
                , style = Semisend
                }
            ]
        )
    ,

        ( read "2018-04-06"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Desert Vuarnet"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Plus )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Black Uhuru"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Big Guy"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Semisend
                }
            ]
        )
    ,

        ( read "2018-04-09"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "No Beggin'"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Minus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Finnegan's Whiskers"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Brother From Another Planet"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 12 A )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-04-10"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Lightning Bolt Cracks"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Lightning Bolt Cracks"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Lightning Bolt Cracks"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-04-19"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Largo Lounge"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Jimmy Hendrix Experience"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-04-20"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Outer Limits"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Cookie Monster"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Crack-a-Go-Go"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Catchy"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Catchy Corner"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-04-21"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "The Angler"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Zorro"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Flash
                }
            , PitchClimb
                { climbName = "Circuit Breaker"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Unnamed"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-04-23"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "East Buttress"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 7 Even )
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-04-25"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Voyager"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-04-26"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Ying-Yang"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Hari-Kiri"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Yami Shami"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 Minus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Unagi"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Manana"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-04-27"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Freeblast"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Freeblast"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Freeblast"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Freeblast"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-04-29"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Waverly wafer"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-05-16"
        ,
            ClimbingDay defaultDayData { writeMonth = True}
            [ PitchClimb
                { climbName = "Birch Tree Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 8 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Upper Diagonal"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Sometime Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Michael's Project"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 8 Minus )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-05-17"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Curving Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 8 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Dancing Madly Backwards"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Pacific Ocean Wall"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Seven Seas"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 B )
                , style = Semisend
                }
            ]
        )
    ,

        ( read "2018-05-19"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Big Bud Arete"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-05-20"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "The Flatiron"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-05-22"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Brinton's Direct"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 8 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "The Stretcher"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 9 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "The Dog"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "The End"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Congratulations"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Fat Pants"
                , extraData = NoClimbData
                , gradeType = Boulder 7
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-05-23"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Stairway"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Spread Eagle"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Starfish"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Pocket Problem"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Tall Boy"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Flying Mancuso"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Bottle"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Flux Boulder Classic"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Sticky Arete"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-05-24"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Trust Fund Slab"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Intercourse Arete"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Boulder Across from Pete's Pebble"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Jenga"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Super Slab"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "P.Stachio"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Romper"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb (Five 2 Even)
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-06-04"
        ,
            ClimbingDay defaultDayData
              { writeMonth = True
              , copyAxis = True}
            [ PitchClimb
                { climbName = "Monkey in the Middle"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Scar Tissue"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Hippocrite"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Eager Beaver"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 Plus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Dirty Bird"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 B )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-06-05"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Five Finger Discount"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Pulling Pockets"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 D )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Synchronicity"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "The Return of Chris Snyder"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Wild Gift"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 C )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Andromeda Strain"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Plus )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-06-06"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Bedtime for Bonzo"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bedtime for Bonzo"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "American Wall"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "American Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Calypso III"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-06-07"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Bathtub Mary"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bullfighter"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Banshee"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Abiyoyo"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 B )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Lip Service"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 C )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-06-08"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Pineapple Express"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Slice of Spice"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Hourglass Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-06-09"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Boogered"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-06-12"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Too Many Puppies"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Table of Colors"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 13 A )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-06-13"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Ale-8-One"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 B )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Harvest"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 D )
                , style = Fail
                }
            , PitchClimb
                { climbName = "The Sauce"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 B )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-07-03"
        ,
            ClimbingDay defaultDayData
              { writeMonth = True
              , copyAxis = True }
            [ PitchClimb
                { climbName = "2nd Apron Center"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "2nd Apron Center"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "2nd Apron Center"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "2nd Apron Center"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 3 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-07-06"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "The Hueco Route"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Barnacles"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Rail"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Pocket"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-07-07"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Pimpsqueak"
                , extraData = NoClimbData
                , gradeType = Boulder 8
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Hueco Route"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Flounder"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Swordfish"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Drugstore Cowboy"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Pocket"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-07-09"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Fridge Slab"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Fridge Center"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Fridge Arete"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-07-10"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "South Face, Jello Tower"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angel"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Midway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Midway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Damnation Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Plus )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-07-11"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Outer Space"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-07-12"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Schisthead"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Prey"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Royal Flush"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Footless Traverse"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Dyno 101"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Beach Arete"
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Beach slab"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Wave"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Brickwork"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Beached Whale"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-07-14"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Dyke Surfer"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Superdyke"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "A Pitch In Time"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Rainy Day Dream Away"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-07-15"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Bop 'til You Drop"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Boogie 'til you Puke"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Fail
                }
            , PitchClimb
                { climbName = "March Of The Kitchen Utensils"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Backwoods Bebop"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "March Of The Kitchen Utensils"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B)
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-07-16"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Five Star Pillar"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-07-17"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Milk Road"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Superfly"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Super Fly Slab"
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Easy in an Easy Chair"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Crackhead"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Flash
                }
            ]
        )
    ,

        ( read "2018-07-18"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Calculus Direct"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Calculus Direct"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Calculus Direct"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-07-20"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "High Plains Drifter"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Flash
                }
            , PitchClimb
                { climbName = "High Plains Drifter"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Flash
                }
            ]
        )
    ,

        ( read "2018-07-21"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Perspective"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Claim Jumper"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 D )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Hypertension"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Flash
                }
            ]
        )
    ,

        ( read "2018-07-22"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Fuzz"
                , extraData = NoClimbData
                , gradeType = Boulder 7
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-07-24"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Wild Turkey"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Wild Turkey"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Wild Turkey"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Klahanie Crack"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-07-25"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Cerberus"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Fail
                }
            , PitchClimb
                { climbName = "King for a day"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-07-27"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Yorkshire Gripper"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Popeye and the Raven"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Quarryman"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Crime of the Century"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Penny Lane"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Perspective"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 11 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Claim Jumper"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 11 D )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Sentry Box"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 12 A )
                , style = Fail
                }
            ]
        )
    ,

        ( read "2018-07-28"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Slice and Dice"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Pete's Face"
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Alien within"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Shots Fired!"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Silencer (stand)"
                , extraData = NoClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "No Excuse For Porn Hair"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Mouthy"
                , extraData = NoClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Minor Swing"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Flash
                }
            , PitchClimb
                { climbName = "Spring Fling"
                , extraData = NoClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-07-30"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "New Life"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "New Life"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "New Life"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "New Life"
                , extraData = NoClimbData
                , gradeType = RopedClimb MixedClimb ( Five 11 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "New Life"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-08-01"
        ,
            ClimbingDay defaultDayData { writeMonth = True}
            [ PitchClimb
                { climbName = "Krimo Gold"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Krimo Gold"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Krimo Gold"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Krimo Gold"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-08-02"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Fantastic Mr. Fox"
                , extraData = NoClimbData
                , gradeType = Boulder 7
                , style = Redpoint
                }
            , PitchClimb
                { climbName = ""
                , extraData = NoClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = ""
                , extraData = NoClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = ""
                , extraData = NoClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Slot Machine"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Fantastic Mr. Fox"
                , extraData = NoClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            ]
        )
    ,

        ( read "2018-08-05"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb MixedClimb ( Five 11 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 D )
                , style = Flash
                }
            ]
        )
    ,

        ( read "2018-08-06"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Exasperator"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Seasoned in the Sun"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Rutebega"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Rutebega"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-08-09"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Behind the Eight Ball"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Slow Children"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Godzilla"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "City Park"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Tommy's Sandbox"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-08-10"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Princely Ambitions"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 9 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Aries (aka The Lizard)"
                , extraData = NoClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Plus )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Leave My Face Alone"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Zoom"
                , extraData = NoClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Climax Control"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 Even )
                , style = Onsight
                }
            ]
        )
    ,

        ( read "2018-08-12"
        ,
            noExtraDayData
            [ PitchClimb
                { climbName = "Kite Flying Blind"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Kite Flying Blind"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Over Orcsposed"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 B )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Over Orcsposed"
                , extraData = NoClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Fail
                }
            ]
        )
    ]
