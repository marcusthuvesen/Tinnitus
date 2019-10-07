//
//  AudioFiles.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-05.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation


struct AudioFiles {
    
    func provideAudioName(senderTag : Int) -> String{
        var soundName = ""
        switch senderTag {
        case 1:
            soundName = "rain"
        case 2:
            soundName = "beachWaves"
        case 3:
            soundName = "thunder"
        case 4:
            soundName = "waves"
        case 5:
            soundName = "fire"
        case 6:
            soundName = "cicadas"
        case 7:
            soundName = "train"
        case 8:
            soundName = "crowd"
        case 9:
            soundName = "airliner"
        case 10:
           soundName = "highway"
        case 11:
           soundName = "coffee"
        case 12:
           soundName = "city"
        case 13:
           soundName = "rain"
        default:
           soundName = "rain"
        }
        return soundName
    }
}

