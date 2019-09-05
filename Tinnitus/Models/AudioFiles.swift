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
        case 0:
            soundName = "rain"
        case 1:
            soundName = "beachWaves"
        case 2:
            soundName = "thunder"
        case 3:
            soundName = "waves"
        case 4:
            soundName = "fire"
        case 5:
            soundName = "cicadas"
        case 6:
            soundName = "rain"
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
        default:
           soundName = "rain"
        }
        return soundName
    }
}

