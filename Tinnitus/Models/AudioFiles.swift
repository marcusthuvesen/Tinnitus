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
            soundName = "rain"
        case 8:
            soundName = "rain"
        case 9:
            soundName = "rain"
        case 10:
           soundName = "rain"
        case 11:
           soundName = "rain"
        case 12:
           soundName = "rain"
        case 13:
           soundName = "train"
        case 14:
            soundName = "crowd"
        case 15:
            soundName = "airliner"
        case 16:
            soundName = "highway"
        case 17:
            soundName = "coffee"
        case 18:
            soundName = "city"
        default:
           soundName = "rain"
        }
        return soundName
    }
}

