//
//  Sound_ViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-07.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class SoundVC_UI: UIViewController {
    
    //Button Outlets
    @IBOutlet weak var firstBtnOutlet: UIButton!
    @IBOutlet weak var secondBtnOutlet: UIButton!
    @IBOutlet weak var thirdBtnOutlet: UIButton!
    @IBOutlet weak var fourthBtnOutlet: UIButton!
    @IBOutlet weak var fifthBtnOutlet: UIButton!
    @IBOutlet weak var sixthBtnOutlet: UIButton!
    @IBOutlet weak var seventhBtnOutlet: UIButton!
    @IBOutlet weak var eigthBtnOutlet: UIButton!
    @IBOutlet weak var ninthBtnOutlet: UIButton!
    @IBOutlet weak var tenthBtnOutlet: UIButton!
    @IBOutlet weak var eleventhBtnOutlet: UIButton!
    @IBOutlet weak var twelfthBtnOutlet: UIButton!
    @IBOutlet weak var thirteenthBtnOutlet: UIButton!
    @IBOutlet weak var fourteenthBtnOutlet: UIButton!
    @IBOutlet weak var fifteenthBtnOutlet: UIButton!
    @IBOutlet weak var sixteenthBtnOutlet: UIButton!
    @IBOutlet weak var seventeenthBtnOutlet: UIButton!
    @IBOutlet weak var eighteenthBtnOutlet: UIButton!
    
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
    @IBOutlet weak var firstOutletBlurImage: UIImageView!
    @IBOutlet weak var secondOutletBlurImage: UIImageView!
    @IBOutlet weak var thirdOutletBlurImage: UIImageView!
    @IBOutlet weak var fourthOutletBlurImage: UIImageView!
    @IBOutlet weak var fifthOutletBlurImage: UIImageView!
    @IBOutlet weak var sixthOutletBlurImage: UIImageView!
    @IBOutlet weak var seventhOutletBlurImage: UIImageView!
    @IBOutlet weak var eigthOutletBlurImage: UIImageView!
    @IBOutlet weak var ninthOutletBlurImage: UIImageView!
    @IBOutlet weak var tenthOutletBlurImage: UIImageView!
    @IBOutlet weak var eleventhOutletBlurImage: UIImageView!
    @IBOutlet weak var twelfthOutletBlurImage: UIImageView!
    @IBOutlet weak var thirteenthOutletBlurImage: UIImageView!
    @IBOutlet weak var fourteenthOutletBlurImage: UIImageView!
    @IBOutlet weak var fifteenthOutletBlurImage: UIImageView!
    @IBOutlet weak var sixteenthOutletBlurImage: UIImageView!
    @IBOutlet weak var seventeenthOutletBlurImage: UIImageView!
    @IBOutlet weak var eighteenthOutletBlurImage: UIImageView!
  
    @IBOutlet weak var soundScrollView: UIScrollView!
    @IBOutlet weak var favoriteLabel: UILabel!
    @IBOutlet weak var mechanicLabel: UILabel!
    @IBOutlet weak var natureLabel: UILabel!
    
    @IBOutlet weak var playBarContainerView: PlayBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSoundVC_UI()
     
    }
    
    
    func setupSoundVC_UI(){
        
        firstSliderOutlet.setThumbImage(UIImage(named: "rain3"), for: .normal)
        secondSliderOutlet.setThumbImage(UIImage(named: "storm2"), for: .normal)
        thirdSliderOutlet.setThumbImage(UIImage(named: "sunset2"), for: .normal)
        
        firstOutletBlurImage.normalButtonUI()
        secondOutletBlurImage.normalButtonUI()
        thirdOutletBlurImage.normalButtonUI()
        fourthOutletBlurImage.normalButtonUI()
        fifthOutletBlurImage.normalButtonUI()
        sixthOutletBlurImage.normalButtonUI()
        seventhOutletBlurImage.normalButtonUI()
        eigthOutletBlurImage.normalButtonUI()
        ninthOutletBlurImage.normalButtonUI()
        tenthOutletBlurImage.normalButtonUI()
        eleventhOutletBlurImage.normalButtonUI()
        twelfthOutletBlurImage.normalButtonUI()
        thirteenthOutletBlurImage.normalButtonUI()
        fourteenthOutletBlurImage.normalButtonUI()
        fifteenthOutletBlurImage.normalButtonUI()
        sixteenthOutletBlurImage.normalButtonUI()
        seventeenthOutletBlurImage.normalButtonUI()
        eighteenthOutletBlurImage.normalButtonUI()
        
        menuBtnOne.normalButtonUI()
        menuBtnTwo.normalButtonUI()
        menuBtnThree.normalButtonUI()
    }
    
    func buttonClickedChanged(senderOutlet : UIImageView, sender: UIControl){
        soundVolumeView.isHidden = false
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            senderOutlet.normalButtonIsClickedUI()
        }else{
            senderOutlet.backgroundColor = UIView.CustomColors.blue
        }
    }
    
//    func checkIfNoBtnIsClicked(){
//        //If True, hide Volume bar
//        if firstBtnOutlet.isSelected{
//            soundVolumeView.isHidden = true
//        }
//    }
    
    @IBAction func firstSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: firstOutletBlurImage, sender: sender)
    }
    @IBAction func secondSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: secondOutletBlurImage, sender: sender)
    }
    @IBAction func thirdSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: thirdOutletBlurImage, sender: sender)
    }
    @IBAction func fourthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: fourthOutletBlurImage, sender: sender)
    }
    @IBAction func fifthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: fifthOutletBlurImage, sender: sender)
    }
    @IBAction func sixthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: sixthOutletBlurImage, sender: sender)
    }
    @IBAction func seventhSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: seventhOutletBlurImage, sender: sender)
    }
    @IBAction func eigthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: eigthOutletBlurImage, sender: sender)
    }
    @IBAction func ninthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: ninthOutletBlurImage, sender: sender)
    }
    @IBAction func tenthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: tenthOutletBlurImage, sender: sender)
    }
    @IBAction func eleventhSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: eleventhOutletBlurImage, sender: sender)
    }
    @IBAction func twelfthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: twelfthOutletBlurImage, sender: sender)
    }
    @IBAction func thirteenthSoundBtn(_ sender: UIButton) {
        buttonClickedChanged(senderOutlet: thirteenthOutletBlurImage, sender: sender)
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

