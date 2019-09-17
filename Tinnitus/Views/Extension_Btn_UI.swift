//
//  Extension_Btn_UI.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-07.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.

import Foundation
import UIKit

extension UIView {
    
    func goldBackground(){
        self.tintColor = CustomColors.gold
    }
    
    func normalTimerButtonUI(){
        self.layer.cornerRadius = self.frame.height/2
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.backgroundColor = CustomColors.blue.cgColor
    }
    
    func normalTimerButtonSelected(){
        self.layer.cornerRadius = self.frame.height/2
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.backgroundColor = CustomColors.transparentPink
    }
    
    func normalButtonUI(){
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
    }
    
    func normalButtonIsClickedUI(){
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.backgroundColor = CustomColors.transparentPink
    }
    
    func premiumButtonUI(){
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.backgroundColor = CustomColors.gold
    }
    
    func disselectedPopupButtonsUI(){
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.layer.borderWidth = 4
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.backgroundColor = CustomColors.veryLightGray
    }
    
    func selectedPopupButtonUI(){
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.layer.borderWidth = 6
        self.layer.borderColor = CustomColors.gold.cgColor
        self.tintColor = CustomColors.gold
        self.backgroundColor = .white
    }
    
    func mostPopularButtonUI(){
        self.layer.cornerRadius = self.frame.height/2
        self.layer.masksToBounds = true
        self.backgroundColor = CustomColors.gold
    }
    
    func premiumPopupContinueUI(){
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.backgroundColor = CustomColors.gold
    }
    func sleepTimerShortcutBtnUI(){
        self.layer.cornerRadius = self.frame.height/2
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
    }
    
}


