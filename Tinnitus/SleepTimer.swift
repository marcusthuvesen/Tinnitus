//
//  SleepTimer.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-17.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation

class SleepTimer{
    var counter = 0
    
    private var sleepTimer : Timer?
    
    func startTimer(hour : Int, minutes : Int){
        stopTimer()
        counter = reformatToSeconds(hour: hour, minutes: minutes)
        sleepTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    
    func reformatToSeconds(hour : Int, minutes : Int) -> Int{
        var seconds = 0
        let hourSeconds = hour * 3600
        let minuteSeconds = minutes * 60
        seconds = hourSeconds + minuteSeconds
        return seconds
    }
    
    func stopTimer(){
        sleepTimer?.invalidate()
        sleepTimer = nil
    }

    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds until pause")
            counter -= 1
        } else {
            print("\(counter) seconds until pause")
            SoundVC_UI.soundsCurrentlyPlaying.stopAll()
            FrequencyVC_UI.toneOutPutUnit.stop()
            stopTimer()
        }
    }
    
}
