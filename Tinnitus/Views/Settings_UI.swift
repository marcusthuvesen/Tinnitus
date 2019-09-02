//
//  SettingsViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-19.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class Settings_UI: UIViewController {

    @IBOutlet weak var settingsPremiumOutlet: UIButton!
    let shareOnSocialMedia = ShareOnSocialMedia()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setupSettingsUI()
    }
    
    func setupSettingsUI(){
        settingsPremiumOutlet.premiumButtonUI()
    }

    @IBAction func settingsPremiumBtn(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "PremiumPopup", bundle: nil).instantiateViewController(withIdentifier: "PremiumPopup_UI") as! PremiumPopup_UI
        popOverVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        tabBarController?.present(popOverVC, animated: true)
    }
    
    
    @IBAction func rateUsBtn(_ sender: UIButton) {
        AppStoreReviewManager.requestReviewIfAppropriate()
    }
    
    @IBAction func shareOnSocialMediaBtn(_ sender: Any) {
        shareOnSocialMedia.shareAppOnSocialMedia(vc : self)
    }
    
}
