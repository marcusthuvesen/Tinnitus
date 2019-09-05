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
}

class SoundPresenter{
    weak private var soundDelegate : SoundDelegate?
    private var audioNames = AudioFiles()
    
    
    func setSoundViewDelegate(soundDelegate : SoundDelegate){
        self.soundDelegate = soundDelegate
    }
    
    func soundButtonClicked(senderOutlet : UIImageView, sender: UIButton){
        sender.isSelected = !sender.isSelected
        print("sender tag in btnCLiked \(sender.tag)")
        let soundName = audioNames.provideAudioName(senderTag: sender.tag)
        
        if sender.isSelected{
            
            print(soundName)
            self.soundDelegate?.soundBtnSelected(senderOutlet : senderOutlet, soundName : soundName)
        } else {
            
            print(soundName)
            self.soundDelegate?.soundBtnUnselected(senderOutlet: senderOutlet, soundName: soundName)
        }
        
    }
    
    
    
    
}
