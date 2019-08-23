//
//  Extension_Btn_UI.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-07.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.

import Foundation
import UIKit

extension UIView {
    
    struct CustomColors{
        static var pink = UIColor(red: 243.0/255, green: 83.0/255, blue: 213.0/255, alpha: 1.0)
        static var transparentPink = UIColor(red: 243.0/255, green: 83.0/255, blue: 213.0/255, alpha: 0.8)
        static var lighterBlue = UIColor(red: 57.0/255, green: 69.0/255, blue: 103.0/255, alpha: 1.0)
        static var blue = UIColor(red: 6.0/255, green: 18.0/255, blue: 60.0/255, alpha: 1.0)
        static var gold = UIColor(red: 238.0/255, green: 187.0/255, blue: 87.0/255, alpha: 1.0)
        static var veryLightGray = UIColor(red: 224.0/255, green: 225.0/255, blue: 230.0/255, alpha: 1)
    }
   
    func roundedCorners(myRadius : CGFloat, borderWith: CGFloat?, borderColor : UIColor?) {
        
        self.layer.cornerRadius = self.frame.size.height/myRadius
        //self.clipsToBounds = true
        self.layer.masksToBounds = true
        
        if borderWith != nil {
            self.layer.borderWidth = 2
        }
        
        if let color = borderColor {
            self.layer.borderColor = color.cgColor
        }
    }
    
    func goldBackground(){
        self.tintColor = CustomColors.gold
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
}
