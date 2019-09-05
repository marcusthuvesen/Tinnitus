//
//  Sound_ViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-07.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit
import AVFoundation
import SwiftySound

class SoundVC_UI: UIViewController, SoundDelegate {
    
    //Button Outlets
     @IBOutlet var soundBtnOutlets: [UIButton]!
    //BackgroundImages Outlets
     @IBOutlet var btnBackgroundImages: [UIImageView]!
    
    //Menu Outlets
    @IBOutlet weak var menuBtnOne: UIButton!
    @IBOutlet weak var menuBtnTwo: UIButton!
    @IBOutlet weak var menuBtnThree: UIButton!
    
    //Volume Outlets
    @IBOutlet weak var soundVolumeView: UIView!
    
    
    //Slider Outlets
    @IBOutlet weak var firstSliderOutlet: UISlider!
    @IBOutlet weak var secondSliderOutlet: UISlider!
    @IBOutlet weak var thirdSliderOutlet: UISlider!
   
    
    @IBOutlet weak var soundScrollView: UIScrollView!
    @IBOutlet weak var favoriteLabel: UILabel!
    @IBOutlet weak var mechanicLabel: UILabel!
    @IBOutlet weak var natureLabel: UILabel!
    
    @IBOutlet weak var playBarContainerView: PlayBar!
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSoundVC_UI()
    }
    
    
    func setupSoundVC_UI(){
        
        firstSliderOutlet.setThumbImage(UIImage(named: "rain3"), for: .normal)
        secondSliderOutlet.setThumbImage(UIImage(named: "storm2"), for: .normal)
        thirdSliderOutlet.setThumbImage(UIImage(named: "sunset2"), for: .normal)
        
        for image in btnBackgroundImages{
            image.normalButtonUI()
        }
        
        menuBtnOne.normalButtonUI()
        menuBtnTwo.normalButtonUI()
        menuBtnThree.normalButtonUI()
    }
    
    
    func soundBtnSelected() {
        
    }
    
    func soundBtnUnselected() {
        
    }
    
    func buttonClickedChanged(senderOutlet : UIImageView, sender: UIControl, soundName : String? = nil){
        soundVolumeView.isHidden = false
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            senderOutlet.normalButtonIsClickedUI()
        }else{
            senderOutlet.backgroundColor = UIView.CustomColors.blue
            if soundName != nil{
                //Sound.stop(file: soundName!)
                Sound.stop(file: soundName!, fileExtension: "wav")
            }
            
        }
    }
    
    //    func checkIfNoBtnIsClicked(){
    //        //If True, hide Volume bar
    //        if firstBtnOutlet.isSelected{
    //            soundVolumeView.isHidden = true
    //        }
    //    }
    
    @IBAction func firstSoundBtn(_ sender: UIButton) {
        Sound.play(file: "rain", fileExtension: "wav", numberOfLoops: -1)
        buttonClickedChanged(senderOutlet: btnBackgroundImages[0], sender: soundBtnOutlets[0], soundName: "rain")
    }
    @IBAction func secondSoundBtn(_ sender: UIButton) {
        Sound.play(file: "beachWaves", fileExtension: "wav", numberOfLoops: -1)
        buttonClickedChanged(senderOutlet: btnBackgroundImages[1], sender: soundBtnOutlets[1], soundName: "beachWaves")
    }
    @IBAction func thirdSoundBtn(_ sender: UIButton) {
        Sound.play(file: "thunder", fileExtension: "wav", numberOfLoops: -1)
        buttonClickedChanged(senderOutlet: btnBackgroundImages[2], sender: soundBtnOutlets[2], soundName: "thunder")
    }
    @IBAction func fourthSoundBtn(_ sender: UIButton) {
        Sound.play(file: "waves", fileExtension: "wav", numberOfLoops: -1)
        buttonClickedChanged(senderOutlet: btnBackgroundImages[3], sender: soundBtnOutlets[3], soundName: "waves")
    }
    @IBAction func fifthSoundBtn(_ sender: UIButton) {
        Sound.play(file: "fire", fileExtension: "wav", numberOfLoops: -1)
        buttonClickedChanged(senderOutlet: btnBackgroundImages[4], sender: soundBtnOutlets[4], soundName: "fire")
    }
    @IBAction func sixthSoundBtn(_ sender: UIButton) {
        Sound.play(file: "cicadas", fileExtension: "wav", numberOfLoops: -1)
        buttonClickedChanged(senderOutlet: btnBackgroundImages[5], sender: soundBtnOutlets[5], soundName: "cicadas")
    }
    @IBAction func seventhSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: btnBackgroundImages[6], sender: soundBtnOutlets[6], soundName: nil)
    }
    @IBAction func eigthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: btnBackgroundImages[7], sender: soundBtnOutlets[7], soundName: nil)
    }
    @IBAction func ninthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: btnBackgroundImages[8], sender: soundBtnOutlets[8], soundName: nil)
    }
    @IBAction func tenthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: btnBackgroundImages[9], sender: soundBtnOutlets[9], soundName: nil)
    }
    @IBAction func eleventhSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: btnBackgroundImages[10], sender: soundBtnOutlets[10], soundName: nil)
    }
    @IBAction func twelfthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: btnBackgroundImages[11], sender: soundBtnOutlets[11], soundName: nil)
    }
    @IBAction func thirteenthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: btnBackgroundImages[12], sender: soundBtnOutlets[12], soundName: nil)
    }
    
    //Send To Premium Popup
    @IBAction func fourteenthSoundBtn(_ sender: UIButton) {
        //buttonClickedChanged(senderOutlet: fourteenthOutletBlurImage, sender: sender)
        sendToPopup()
    }
    @IBAction func fifteenthSoundBtn(_ sender: UIButton) {
        //buttonClickedChanged(senderOutlet: fifteenthOutletBlurImage, sender: sender)
        sendToPopup()
    }
    @IBAction func sixteenthSoundBtn(_ sender: UIButton) {
        //buttonClickedChanged(senderOutlet: sixteenthOutletBlurImage, sender: sender)
        sendToPopup()
    }
    @IBAction func seventeenthSoundBtn(_ sender: UIButton) {
        //buttonClickedChanged(senderOutlet: seventeenthOutletBlurImage, sender: sender)
        sendToPopup()
    }
    @IBAction func eighteenthSoundBtn(_ sender: UIButton) {
        //buttonClickedChanged(senderOutlet: eighteenthOutletBlurImage, sender: sender)
        sendToPopup()
    }
    
    func sendToPopup(){
        let popOverVC = UIStoryboard(name: "PremiumPopup", bundle: nil).instantiateViewController(withIdentifier: "PremiumPopup_UI") as! PremiumPopup_UI
        popOverVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        tabBarController?.present(popOverVC, animated: true)
    }
    
    @IBAction func menuBtnOne(_ sender: Any) {
        self.soundScrollView.scrollToView(view: self.natureLabel, animated: true)
        
    }
    
    @IBAction func menuBtnTwo(_ sender: Any) {
        self.soundScrollView.scrollToView(view: self.mechanicLabel, animated: true)
        
    }
    
    @IBAction func menuBtnThree(_ sender: Any) {
        self.soundScrollView.scrollToView(view: self.favoriteLabel, animated: true)
        
    }
    
}


extension UIScrollView {
    
    // Scroll to a specific view so that it's top is at the top our scrollview
    func scrollToView(view:UIView, animated: Bool) {
        if let origin = view.superview {
            // Get the Y position of your child view
            let childStartPoint = origin.convert(view.frame.origin, to: self)
            // Scroll to a rectangle starting at the Y of your subview, with a height of the scrollview
            self.scrollRectToVisible(CGRect(x:0, y:childStartPoint.y,width: 1,height: self.frame.height), animated: animated)
        }
    }
    
    // Bonus: Scroll to top
    func scrollToTop(animated: Bool) {
        let topOffset = CGPoint(x: 0, y: -contentInset.top)
        setContentOffset(topOffset, animated: animated)
    }
    
    // Bonus: Scroll to bottom
    func scrollToBottom() {
        let bottomOffset = CGPoint(x: 0, y: contentSize.height - bounds.size.height + contentInset.bottom)
        if(bottomOffset.y > 0) {
            setContentOffset(bottomOffset, animated: true)
        }
    }
    
}

