//
//  SleepTimerPopup_UI.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-15.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class SleepTimerPopup_UI: UIViewController {

    @IBOutlet var shortcutOutlets: [UIButton]!
    @IBOutlet weak var timerDoneOutlet: UIButton!
    @IBOutlet weak var timePickerOutlet: UIDatePicker!
    @IBOutlet weak var sleepTimerContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSleepTimerUI()
    }
    
    func setupSleepTimerUI(){
        for outlet in shortcutOutlets{
            outlet.sleepTimerShortcutBtnUI()
        }
        timerDoneOutlet.premiumPopupContinueUI()
        timePickerOutlet.setValue(UIColor.white, forKeyPath: "textColor")
        sleepTimerContainerView.normalButtonUI()
    }
    
    
    @IBAction func dismissTimerPopup(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func timerDoneBtn(_ sender: UIButton) {
    }
    @IBAction func sleepTimeChanged(_ sender: UIDatePicker) {
    }
}
