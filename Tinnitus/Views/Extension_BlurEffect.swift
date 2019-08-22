//
//  Extension_BlurEffect.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-09.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation
import UIKit
extension UIImageView    {
    func addBlurEffect()
    {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
        self.addSubview(blurEffectView)
    }
}
