//
//  FrecuencyPresenter.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-03.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation
import UIKit

protocol FrequencyDelegate : NSObjectProtocol  {
    func buttonSelected(buttonOutlet : UIButton)
    func buttonUnselected(buttonOutlet : UIButton)
}


class FrequencyPresenter{
    
    weak private var frequencyDelegate : FrequencyDelegate?
   
    func setFrequencyViewDelegate(frequencyDelegate : FrequencyDelegate){
        self.frequencyDelegate = frequencyDelegate
    }
    
    func frequencyAction(sender : UISlider, frequencyLabel : UILabel, myUnit : ToneOutputUnit){
        let frequencyValue = String(Int(sender.value * 10000))
        frequencyLabel.text = frequencyValue + " KHz"
        myUnit.setFrequency(freq: Double(frequencyValue)!)
    }
    
    func frequencyButtonSelected(sender : UIButton){
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            self.frequencyDelegate?.buttonSelected(buttonOutlet : sender)
        } else {
            self.frequencyDelegate?.buttonUnselected(buttonOutlet : sender)
        }
        
    }
    
}
