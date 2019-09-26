//
//  AskForFeedbackUI.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-26.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class AskForFeedbackUI: UIViewController {
    @IBOutlet weak var leaveFeedbackOutlet: UIButton!
    @IBOutlet weak var sendToRateOutlet: UIButton!
    @IBOutlet weak var askForFeedbackContainer: UIView!
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupAskForFeedbackUI()
    }
    
    func setupAskForFeedbackUI(){
        leaveFeedbackOutlet.premiumPopupContinueUI()
        sendToRateOutlet.premiumPopupContinueUI()
        askForFeedbackContainer.normalButtonUI()
        avatarImage.goldBackground()
        
    }
    
    @IBAction func dismissPopupBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func sendToRateBtn(_ sender: Any) {
        AppStoreReviewManager.requestReviewIfAppropriate()
    }
    @IBAction func leaveFeedbackBtn(_ sender: Any) {
    }
    
}
