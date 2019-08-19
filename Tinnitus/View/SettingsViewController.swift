//
//  SettingsViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-19.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsPremiumOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       setupSettingsUI()
    }
    
    func setupSettingsUI(){
        settingsPremiumOutlet.premiumButtonUI()
    }

}
