//
//  SoundPresenter.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-05.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation
import UIKit

protocol SoundDelegate : NSObjectProtocol{
    func soundBtnSelected(senderOutlet : UIImageView, soundName : String)
    func soundBtnUnselected(senderOutlet : UIImageView, soundName : String)
    func changeSliderImage(sender : UIButton, senderOutlet: UIImageView, soundName : String)
    func removeSliderImage(senderOutlet : UIButton)
}

class SoundPresenter{
    weak private var soundDelegate : SoundDelegate?
    private var audioNames = AudioFiles()
    
    
    func setSoundViewDelegate(soundDelegate : SoundDelegate){
        self.soundDelegate = soundDelegate
    }
    
    func soundButtonClicked(senderOutlet : UIImageView, sender: UIButton){
        sender.isSelected = !sender.isSelected
        let soundName = audioNames.provideAudioName(senderTag: sender.tag)
        
        if sender.isSelected{
            self.soundDelegate?.changeSliderImage(sender : sender, senderOutlet : senderOutlet, soundName : soundName)
            self.soundDelegate?.soundBtnSelected(senderOutlet : senderOutlet, soundName : soundName)
        } else {
            self.soundDelegate?.removeSliderImage(senderOutlet : sender)
            self.soundDelegate?.soundBtnUnselected(senderOutlet: senderOutlet, soundName: soundName)
        }
    }
    
    func howManySoundsPlaying(soundBtnOutlets : [UIButton]) -> Int {
        var amountOfActiveBtns = 0
        for outlet in soundBtnOutlets{
            if outlet.isSelected{
                amountOfActiveBtns += 1
            }
        }
        return amountOfActiveBtns
    }
    
    
}
