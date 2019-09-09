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
        SoundsCurrentlyPlaying.soundsArray.append(soundName)
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
    
}
