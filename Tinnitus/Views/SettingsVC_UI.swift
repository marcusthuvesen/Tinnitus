//
//  SettingsViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-19.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class SettingsVC_UI: UIViewController {

    @IBOutlet weak var settingsPremiumOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       setupSettingsUI()
        
    }
    
    func setupSettingsUI(){
        settingsPremiumOutlet.premiumButtonUI()
    }

    @IBAction func settingsPremiumBtn(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "PremiumPopup", bundle: nil).instantiateViewController(withIdentifier: "PremiumPopupVC_UI") as! PremiumPopupVC_UI
        popOverVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        tabBarController?.present(popOverVC, animated: true)
    }
}
