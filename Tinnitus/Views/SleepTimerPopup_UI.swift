//
//  SleepTimerPopup_UI.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-15.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class SleepTimerPopup_UI: UIViewController, SleepTimerPopupDelegate {
    
    @IBOutlet var shortcutOutlets: [UIButton]!
    @IBOutlet weak var timerDoneOutlet: UIButton!
    @IBOutlet weak var timePickerOutlet: UIDatePicker!
    @IBOutlet weak var sleepTimerContainerView: UIView!
    @IBOutlet weak var sleepTimeLabel: UILabel!
    @IBOutlet weak var stopWatchBackgroundView: UIView!
    @IBOutlet weak var stopWatchImage: UIView!
    
    let sleepTimerPopupDelegate = SleepTimerPopupPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSleepTimerUI()
        setupSleepTimerDelegate()
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
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat =  "HH:mm"
        if let date = dateFormatter.date(from: "00:00"){
            timePickerOutlet.date = date
        }
    }
    
    func setupSleepTimerDelegate(){
        sleepTimerPopupDelegate.setSleepTimerViewDelegate(sleepTimerDelegate : self)
        
    }
    
    
    @IBAction func dismissTimerPopup(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func timerDoneBtn(_ sender: UIButton) {
    }
    @IBAction func sleepTimeChanged(_ sender: UIDatePicker) {
        sleepTimerPopupDelegate.timePickerChanged(datePicker : timePickerOutlet, sleepTimeLabel: sleepTimeLabel)
    }
    
    func shortcutBtnSelectedUI(sender: UIButton) {
        sender.normalTimerButtonSelected()
        
    }
    
    func shortcutBtnUnselectedUI(sender: UIButton) {
        sender.normalTimerButtonUI()
        sender.isSelected = false
    }
    
    @IBAction func shortcutBtns(_ sender: UIButton) {
        sleepTimerPopupDelegate.shortcutBtnSelected(sender: sender, sleepTimeLabel : sleepTimeLabel)
    }
    

}
