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
    @IBOutlet weak var sleepTimeLabel: UILabel!
    @IBOutlet weak var stopWatchBackgroundView: UIView!
    @IBOutlet weak var stopWatchImage: UIView!
    
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
        stopWatchBackgroundView.layer.cornerRadius = stopWatchBackgroundView.frame.height / 2
        stopWatchImage.tintColor = UIView.CustomColors.gold
        
    
    }
    
    
    @IBAction func dismissTimerPopup(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func timerDoneBtn(_ sender: UIButton) {
    }
    @IBAction func sleepTimeChanged(_ sender: UIDatePicker) {
        let date = timePickerOutlet.date
        let components = Calendar.current.dateComponents([.hour, .minute, .second], from: date)
        let hour = components.hour!
        let minute = components.minute!
        let second = components.second!

        print("\(hour): \(minute)")
        sleepTimeLabel.isHidden = false
        if hour == 0{
            sleepTimeLabel.text = "00:\(minute)"
        }
        else if hour < 10{
            sleepTimeLabel.text = "0\(hour): \(minute)"
        }
        else{
            sleepTimeLabel.text = "\(hour): \(minute)"
        }
        
    }

}
