//
//  PremiumPopupViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-21.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class PremiumPopupViewController: UIViewController {

    @IBOutlet weak var backgroundPopupImage: UIImageView!
    @IBOutlet weak var premiumContainerView: UIView!
    @IBOutlet weak var continueBtnOutlet: UIButton!
    @IBOutlet weak var firstSubBtnOutlet: UIButton!
    @IBOutlet weak var secondSubBtnOutlet: UIButton!
    @IBOutlet weak var thirdSubBtnOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupPremiumPopupUI()
    }
    
    func setupPremiumPopupUI(){
        premiumContainerView.normalButtonUI()
        firstSubBtnOutlet.normalButtonUI()
        secondSubBtnOutlet.normalButtonUI()
        thirdSubBtnOutlet.normalButtonUI()
        continueBtnOutlet.premiumButtonUI()
        backgroundPopupImage.addBlurEffect()
    }

    @IBAction func dismissPopupBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
