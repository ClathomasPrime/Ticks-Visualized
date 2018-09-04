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
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Contrail"
                , extraData = defaultClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Helicopter"
                , extraData = defaultClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Scoop"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Full Circle"
                , extraData = defaultClimbData
                , gradeType = Boulder 5
                , style = Flash
                }
            , PitchClimb
                { climbName = "The Hobbit"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Iron Claw"
                , extraData = defaultClimbData { writeBelow=True, writeGrade=True}
                , gradeType = Boulder 7
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The climb that wasn't called 40 feet of fun"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Making waves"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Blue"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Ripple"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Rail Grind"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Mario"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Luigi"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Jaber Jaw"
                , extraData = defaultClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Grape Ape"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Lab Rats"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Merlin"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bumboy"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Hammerhead"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Red Arrow"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Beach"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Silky"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "That boulder that shut down Donovan lol"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Crisifix"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Wasp"
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Slow hand corridor slab"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Man with a Slow Hand"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Honkey Tonkin'"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = Boulder 7
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Swingers"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Wave"
                , extraData = defaultClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "A Face in the Crowd"
                , extraData = defaultClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Incredarete"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Bonzo Dog Band"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Swing Low"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Eff Four"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Ass of Dog"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Tax Man"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Minus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Clean and Jerk"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 C )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Left Ski Track"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Western Saga"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Dappled Mare"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Dappled Mare"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Dappled Mare"
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 8 Minus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Overseer"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "White Lightning"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Dogleg"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Championship Wrestling"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Dandelion"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Clean and Jerk"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "SW Corner"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Flash
                }
            , PitchClimb
                { climbName = "Leave it to Beaver"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "It"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Walk on the Wild Side"
                , extraData = defaultClimbData
                , gradeType = RopedClimb MixedClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Walk on the Wild Side"
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb MixedClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Right On"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Right On"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Right On"
                , extraData = defaultClimbData{writeBelow=True}
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
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Old Triangle Classic"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "False Hueco"
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Flash
                }
            , PitchClimb
                { climbName = "False Hueco Traverse"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Flash
                }
            , PitchClimb
                { climbName = "White Rastafarian"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = Boulder 2
                , style = Flash
                }
            , PitchClimb
                { climbName = "North Overhang"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Stem Gem"
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Fisticuffs"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Run For Your Life"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Tumbling Rainbow"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Imaginary Voyage"
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Surrealistic Pillar"
                , extraData = defaultClimbData{writeBelow=True}
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
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb MixedClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Forbidden Paradise"
                , extraData = defaultClimbData
                , gradeType = RopedClimb MixedClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Heart and Sole"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Stick to What"
                , extraData = defaultClimbData
                , gradeType = RopedClimb MixedClimb ( Five 9 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "EBGB's"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Pope's Crack"
                , extraData = defaultClimbData
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
                { climbName = "Figures on a Landscape"
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Figures on a Landscape (aka Monkey on My Back)"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Room To Shroom"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Gunsmoke"
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = Boulder 3
                , style = Flash
                }
            , PitchClimb
                { climbName = "The Chube"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Flash
                }
            , PitchClimb
                { climbName = "Loose Lady"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Potatoe Chips"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Prophet"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 C )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Scorpions"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Sport Chimney"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 8 Even )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Sunny and Steep"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Steep Thrills"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Gimme Back My Bullets"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Mr Choad's Wild Ride"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cat in the Hat"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cat in the Hat"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Rabbit's Arete"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Peruvian Flake"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bachar Problem"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Don't Leave Too Soon"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Low Tide"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = Boulder 6
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Water Paintings"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Ruins Crack"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Cave Route"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Spaghetti Western"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Steve's Wimpout"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bobcat in the Kiparoo"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Kill by Numbers"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Lanky"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Beer Belly"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Hand Crack"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cook the Patty"
                , extraData = defaultClimbData
                , gradeType = Boulder 6
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Trouff"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "DK's Bulge"
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bowling Ball"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Crest"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Right of Anti-Future Plan"
                , extraData = defaultClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Wills A Fire"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Down Climb"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Flash
                }
            , PitchClimb
                { climbName = "Michelangelo"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Flash
                }
            , PitchClimb
                { climbName = "The Comedian"
                , extraData = defaultClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Great White"
                , extraData = defaultClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Epic V0"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Called on Account of Pain"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Beautiful Loser"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Chain Reaction"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Nameless Arête"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Tango Super Direct"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The flake"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Rat Rock Traverse"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "cats corner"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cat Crack"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cat Arete"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Cube Steaks"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Unnamed blocky corner to hands splitter"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Fuzz"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Rochambeau"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Serrator Crack"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Layaway Plan"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Big Guy"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Desert Vuarnet"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Keyhole Flake"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Supercrack of the Desert"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "International Affair"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 12 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Coyne Crack"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Ruby Flame"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Belly full of bad berries"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb TradClimb ( Five 10 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Stolen Chimney"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Stolen Chimney"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Stolen Chimney"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Charlie's Pillar"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Annunaki"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = RopedClimb CrackClimb ( Five 11 Plus )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Neat"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Lady Pillar"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = RopedClimb CrackClimb ( Five 11 Plus )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Black Uhuru"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Big Guy"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Minus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Finnegan's Whiskers"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Brother From Another Planet"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Lightning Bolt Cracks"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Lightning Bolt Cracks"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Jimmy Hendrix Experience"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Cookie Monster"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Crack-a-Go-Go"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Catchy"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Catchy Corner"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Zorro"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Flash
                }
            , PitchClimb
                { climbName = "Circuit Breaker"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Unnamed"
                , extraData = defaultClimbData
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
                { climbName = "East Buttress of Middle Cathedral"
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb TradClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "East Buttress"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Voyager"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Hari-Kiri"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Yami Shami"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 Minus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Unagi"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Manana"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Freeblast"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Freeblast"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Freeblast"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 8 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Upper Diagonal"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Sometime Crack"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Michael's Project"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 8 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Dancing Madly Backwards"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Pacific Ocean Wall"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Seven Seas"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 8 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "The Stretcher"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 9 Plus )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "The Dog"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "The End"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Congratulations"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Fat Pants"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Spread Eagle"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Starfish"
                , extraData = defaultClimbData
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Pocket Problem"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Tall Boy"
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Flying Mancuso"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Bottle"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Flux Boulder Classic"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Sticky Arete"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Intercourse Arete"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Boulder Across from Pete's Pebble"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Jenga"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = Boulder 6
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Super Slab"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Onsight
                }
            , PitchClimb
                { climbName = "P.Stachio"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Romper"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Scar Tissue"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Hippocrite"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Eager Beaver"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 Plus )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Dirty Bird"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Pulling Pockets"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 D )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Synchronicity"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "The Return of Chris Snyder"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Wild Gift"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 C )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Andromeda Strain"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bedtime for Bonzo"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "American Wall"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "American Crack"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Calypso III"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Bullfighter"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = RopedClimb SportClimb ( Five 12 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Banshee"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Abiyoyo"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = RopedClimb SportClimb ( Five 12 B )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Lip Service"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Slice of Spice"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Hourglass Crack"
                , extraData = defaultClimbData{writeBelow=True}
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
                , extraData = defaultClimbData{writeBelow=True}
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Table of Colors"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 B )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Harvest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 D )
                , style = Fail
                }
            , PitchClimb
                { climbName = "The Sauce"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb TradClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "2nd Apron Center"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "2nd Apron Center"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 7 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "2nd Apron Center"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Barnacles"
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Rail"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Pocket"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = Boulder 8
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Hueco Route"
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Flounder"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Swordfish"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Drugstore Cowboy"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Pocket"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Fridge Center"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Fridge Arete"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angel"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Midway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Midway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Damnation Crack"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Outer Space"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Prey"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Royal Flush"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Footless Traverse"
                , extraData = defaultClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Dyno 101"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Beach Arete"
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Beach slab"
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Wave"
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Brickwork"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Beached Whale"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Superdyke"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "A Pitch In Time"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Rainy Day Dream Away"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Boogie 'til you Puke"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Fail
                }
            , PitchClimb
                { climbName = "March Of The Kitchen Utensils"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Backwoods Bebop"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "March Of The Kitchen Utensils"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Milk Road"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Superfly"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Super Fly Slab"
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Easy in an Easy Chair"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Crackhead"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Calculus Direct"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Calculus Direct"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 6 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 5 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Angels Crest"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "High Plains Drifter"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Flash
                }
            , PitchClimb
                { climbName = "High Plains Drifter"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Minus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Claim Jumper"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 D )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Hypertension"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cruel Shoes"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Grand Wall"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "The Fuzz"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Wild Turkey"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Wild Turkey"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 Even )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Klahanie Crack"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 7 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Cerberus"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 D )
                , style = Fail
                }
            , PitchClimb
                { climbName = "King for a day"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Popeye and the Raven"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Quarryman"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Crime of the Century"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Penny Lane"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Perspective"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 11 A )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Claim Jumper"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 11 D )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Sentry Box"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Pete's Face"
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Alien within"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Shots Fired!"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "The Silencer (stand)"
                , extraData = defaultClimbData
                , gradeType = Boulder 3
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "No Excuse For Porn Hair"
                , extraData = defaultClimbData
                , gradeType = Boulder 4
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Mouthy"
                , extraData = defaultClimbData
                , gradeType = Boulder 5
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Minor Swing"
                , extraData = defaultClimbData
                , gradeType = Boulder 6
                , style = Flash
                }
            , PitchClimb
                { climbName = "Spring Fling"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "New Life"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "New Life"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "New Life"
                , extraData = defaultClimbData
                , gradeType = RopedClimb MixedClimb ( Five 11 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "New Life"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Parallel Passages"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Krimo Gold"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Krimo Gold"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Krimo Gold"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = Boulder 7
                , style = Redpoint
                }
            , PitchClimb
                { climbName = ""
                , extraData = defaultClimbData
                , gradeType = Boulder 0
                , style = Redpoint
                }
            , PitchClimb
                { climbName = ""
                , extraData = defaultClimbData
                , gradeType = Boulder 1
                , style = Redpoint
                }
            , PitchClimb
                { climbName = ""
                , extraData = defaultClimbData
                , gradeType = Boulder 2
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Slot Machine"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Plus )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Fantastic Mr. Fox"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData{writeBelow=True}
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 B )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 B )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 C )
                , style = Semisend
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb MixedClimb ( Five 11 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Flash
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 11 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Freeway"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Seasoned in the Sun"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Rutebega"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Rutebega"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 A )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Slow Children"
                , extraData = defaultClimbData{writeBelow=True, writeGrade=True}
                , gradeType = RopedClimb CrackClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Godzilla"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 9 Even )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "City Park"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 10 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Tommy's Sandbox"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 9 Even )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Aries (aka The Lizard)"
                , extraData = defaultClimbData
                , gradeType = RopedClimb CrackClimb ( Five 8 Plus )
                , style = Redpoint
                }
            , PitchClimb
                { climbName = "Leave My Face Alone"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Zoom"
                , extraData = defaultClimbData
                , gradeType = RopedClimb TradClimb ( Five 10 D )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Climax Control"
                , extraData = defaultClimbData
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
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 A )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Kite Flying Blind"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 C )
                , style = Onsight
                }
            , PitchClimb
                { climbName = "Over Orcsposed"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 11 B )
                , style = Fail
                }
            , PitchClimb
                { climbName = "Over Orcsposed"
                , extraData = defaultClimbData
                , gradeType = RopedClimb SportClimb ( Five 12 A )
                , style = Fail
                }
            ]
        )
    ]
