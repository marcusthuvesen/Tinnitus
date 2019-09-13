//
//  SoundsCurrentlyPlaying.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-09.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation
import AVFoundation

class SoundsCurrentlyPlaying{
    
    static var soundsArray = [String]()
    static var audioPlayer = AVAudioPlayer()
    var audioPlayers : [(audioPlayer : AVAudioPlayer, fileName : String)] = []
    
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
    
    func playSound(fileName : String) {
        
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            let audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            audioPlayers.append((audioPlayer, fileName))
            let newAudioPlayer = audioPlayers[audioPlayers.count-1]
            newAudioPlayer.audioPlayer.numberOfLoops = -1
            newAudioPlayer.audioPlayer.volume = 1
            newAudioPlayer.audioPlayer.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func removeSound(fileName : String){
        var counter = 0
        for sound in SoundsCurrentlyPlaying.soundsArray{
           
            if sound == fileName{
                SoundsCurrentlyPlaying.soundsArray.remove(at: counter)
            }
             counter += 1
        }
    }
    
    func stopSound(stopFileName : String){
        for player in audioPlayers{
            if player.fileName == stopFileName{
                player.audioPlayer.stop()
                removeSound(fileName: stopFileName)
            }
        }
    }
    
    func changeVolumeOnSound(soundName : String? = nil, newValue : Float){
        if soundName != nil{
            for player in audioPlayers{
                if player.fileName == soundName{
                    player.audioPlayer.volume = newValue
                }
            }
        }
    }
    
    func stopAll(){
        
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
