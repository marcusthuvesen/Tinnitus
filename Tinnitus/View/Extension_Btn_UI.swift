//
//  Extension_Btn_UI.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-07.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
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
    
    
    func normalButtonUI(){
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
    }
}
