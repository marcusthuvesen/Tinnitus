//
//  PremiumPopupViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-21.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class PremiumPopupVC_UI: UIViewController {

    @IBOutlet weak var backgroundPopupImage: UIImageView!
    @IBOutlet weak var premiumContainerView: UIView!
    @IBOutlet weak var continueBtnOutlet: UIButton!
    @IBOutlet weak var firstSubBtnOutlet: UIButton!
    @IBOutlet weak var secondSubBtnOutlet: UIButton!
    @IBOutlet weak var thirdSubBtnOutlet: UIButton!
    @IBOutlet weak var premiumAvatarImage: UIImageView!
    @IBOutlet weak var mostPopularView: UIView!
    
    @IBOutlet weak var firstPopupBtnView: UIView!
    @IBOutlet weak var secondPopupBtnView: UIView!
    @IBOutlet weak var thirdPopupBtnView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupPremiumPopupUI()
    }
    
    func setupPremiumPopupUI(){
        premiumContainerView.normalButtonUI()
        firstSubBtnOutlet.normalButtonUI()
        secondSubBtnOutlet.normalButtonUI()
        thirdSubBtnOutlet.normalButtonUI()
        continueBtnOutlet.premiumPopupContinueUI()
        backgroundPopupImage.addBlurEffect()
        premiumAvatarImage.tintColor = UIColor.purple
//        firstSubBtnOutlet.popupButtonsUI()
//        secondSubBtnOutlet.selectedPopupButtonUI()
//        thirdSubBtnOutlet.popupButtonsUI()
        mostPopularView.mostPopularButtonUI()
        firstPopupBtnView.disselectedPopupButtonsUI()
        secondPopupBtnView.selectedPopupButtonUI()
        thirdPopupBtnView.disselectedPopupButtonsUI()
    }

    @IBAction func dismissPopupBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
