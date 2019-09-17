//
//  SleepTimerPopupPresenter.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-16.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation
import UIKit

protocol SleepTimerPopupDelegate : NSObjectProtocol{
    func shortcutBtnSelectedUI(sender : UIButton)
    func shortcutBtnUnselectedUI(sender : UIButton)
}

class SleepTimerPopupPresenter{
    
    weak private var sleepTimerDelegate : SleepTimerPopupDelegate?
    private var latestOutlet : UIButton?
    
    func setSleepTimerViewDelegate(sleepTimerDelegate : SleepTimerPopupDelegate){
        self.sleepTimerDelegate = sleepTimerDelegate
    }
    
    func shortcutBtnSelected(sender : UIButton, sleepTimeLabel : UILabel){
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            self.sleepTimerDelegate?.shortcutBtnSelectedUI(sender : sender)
            unselectLatestOutlet(sender: sender)
            sleepTimeLabel.isHidden = false
            switch sender.tag {
            case 0:
                print("här inne")
                sleepTimeLabel.text = "00:15:00"
            case 1:
                sleepTimeLabel.text = "00:30:00"
            case 2:
                sleepTimeLabel.text = "00:45:00"
            case 3:
                sleepTimeLabel.text = "00:60:00"
            default:
                sleepTimeLabel.text = "00:00:00"
            }
        } else {
            self.sleepTimerDelegate?.shortcutBtnUnselectedUI(sender : sender)
        }
        
        
    }
    
    func unselectLatestOutlet(sender : UIButton){
        if latestOutlet != nil{
            self.sleepTimerDelegate?.shortcutBtnUnselectedUI(sender : latestOutlet!)
        }
        latestOutlet = sender
    }
    
    func timePickerChanged(datePicker : UIDatePicker, sleepTimeLabel : UILabel){
        print("Inne nu")
        changeCountDownTimer(datePicker: datePicker, sleepTimeLabel: sleepTimeLabel)
        
        if latestOutlet != nil {
            unselectLatestOutlet(sender: latestOutlet!)
        }
       
    }
    
    func changeCountDownTimer(datePicker : UIDatePicker, sleepTimeLabel : UILabel){
        let date = datePicker.date
        let components = Calendar.current.dateComponents([.hour, .minute, .second], from: date)
        let hour = components.hour!
        let minute = components.minute!
        let second = components.second!
        
        
        sleepTimeLabel.isHidden = false
        var stringMinute = ""
        if minute < 10 {
            stringMinute = String(minute)
            stringMinute = "0+\(minute)"
        }else{
            stringMinute = String(minute)
        }
        if hour == 0{
            sleepTimeLabel.text = "00:" + stringMinute + ":00"
        }
        else if hour < 10{
            sleepTimeLabel.text = "0\(hour):" + stringMinute + ":00"
        }
        else{
            sleepTimeLabel.text = "\(hour):" + stringMinute + ":00"
        }
    }
    
    
}
