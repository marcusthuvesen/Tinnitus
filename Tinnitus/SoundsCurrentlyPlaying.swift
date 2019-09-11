//
//  SoundsCurrentlyPlaying.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-09.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation

class SoundsCurrentlyPlaying{
    
    static var soundsArray = [String]()
    
    func saveCurrentSound(soundName : String){
        print("appending \(soundName)")
        var soundAlreadyExists = false
        for sound in SoundsCurrentlyPlaying.soundsArray{
            if soundName == sound{
               soundAlreadyExists = true
            }
        }
        if !soundAlreadyExists{
             SoundsCurrentlyPlaying.soundsArray.append(soundName)
        }
        
    }
    
    func removeSound(soundName : String){
        var counter = 0
        for sound in SoundsCurrentlyPlaying.soundsArray{
           
            if sound == soundName{
                SoundsCurrentlyPlaying.soundsArray.remove(at: counter)
            }
             counter += 1
        }
    }
    
    func areSoundsPlaying() -> Bool{
        let amountOfSoundsPlayed = SoundsCurrentlyPlaying.soundsArray.count
        var soundsArePlaying = false
        if amountOfSoundsPlayed > 0{
            soundsArePlaying = true
        }
        print(amountOfSoundsPlayed)
        return soundsArePlaying
    }
    
}
