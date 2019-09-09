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
    var defaultThumbImage : UIImage?
    
    var audioPlayer: AVAudioPlayer?
    let soundPresenter = SoundPresenter()
    var previousThirdSender : UIButton?
    var previousThirdSoundName : String?
    var previousThirdOutlet : UIImageView?
    var soundsCurrentlyPlaying = SoundsCurrentlyPlaying()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSoundVC_UI()
        setupSoundDelegate()
        defaultThumbImage = firstSliderOutlet.currentThumbImage
    }
    
    func setupSoundDelegate(){
        soundPresenter.setSoundViewDelegate(soundDelegate: self)
    }
    
    func setupSoundVC_UI(){
        
        for image in btnBackgroundImages{
            image.normalButtonUI()
        }
        
        menuBtnOne.normalButtonUI()
        menuBtnTwo.normalButtonUI()
        menuBtnThree.normalButtonUI()
    }
    
    func soundBtnSelected(senderOutlet : UIImageView, soundName : String) {
        senderOutlet.normalButtonIsClickedUI()
        soundVolumeView.isHidden = false
        Sound.play(file: soundName, fileExtension: "wav", numberOfLoops: -1)
    }
    
    func soundBtnUnselected(senderOutlet : UIImageView, soundName : String) {
        senderOutlet.backgroundColor = UIView.CustomColors.blue
        Sound.stop(file: soundName, fileExtension: "wav")
        soundsCurrentlyPlaying.removeSound(soundName: soundName)
    }
    
    func checkNumberOfEmptySliders() -> Int{
        var firstEmptySpot = 0
        
        if firstSliderOutlet?.currentThumbImage == defaultThumbImage{
            firstEmptySpot = 1
        }
        else if secondSliderOutlet?.currentThumbImage == defaultThumbImage{
            firstEmptySpot = 2
        }
        else if thirdSliderOutlet?.currentThumbImage == defaultThumbImage{
            firstEmptySpot = 3
        }
        return firstEmptySpot
    }
    
    func changeSliderImage(sender: UIButton, senderOutlet: UIImageView, soundName : String) {

        let checkEmptySlider = checkNumberOfEmptySliders()
        
        var senderImage = sender.image(for: .normal)
        //senderImage = senderImage?.resized(toWidth: CGFloat(50))
        
        switch checkEmptySlider {
        case 1:
            firstSliderOutlet.setThumbImage(senderImage, for: .normal)
        case 2:
            secondSliderOutlet.setThumbImage(senderImage, for: .normal)
        case 3:
            thirdSliderOutlet.setThumbImage(senderImage, for: .normal)
            setPreviousThirdInputs(sender: sender, senderOutlet: senderOutlet, soundName: soundName)
        default:

            if previousThirdOutlet != nil {
                 soundBtnUnselected(senderOutlet: previousThirdOutlet!, soundName: previousThirdSoundName!)
                previousThirdSender?.isSelected = false
                removeSliderImage(senderOutlet: previousThirdSender!)
            }
            
            thirdSliderOutlet.setThumbImage(sender.image(for: .normal), for: .normal)
            setPreviousThirdInputs(sender: sender, senderOutlet: senderOutlet, soundName: soundName)
        }
    }
    
    func setPreviousThirdInputs(sender: UIButton, senderOutlet: UIImageView, soundName : String ){
        previousThirdSender = sender
        previousThirdOutlet = senderOutlet
        previousThirdSoundName = soundName
    }
    
    func removeSliderImage(senderOutlet : UIButton){
        
        if firstSliderOutlet.currentThumbImage == senderOutlet.currentImage{
            firstSliderOutlet.setThumbImage(defaultThumbImage, for: .normal)
        }else if secondSliderOutlet.currentThumbImage == senderOutlet.currentImage{
            secondSliderOutlet.setThumbImage(defaultThumbImage, for: .normal)
        }else if thirdSliderOutlet.currentThumbImage == senderOutlet.currentImage{
            thirdSliderOutlet.setThumbImage(defaultThumbImage, for: .normal)
        }
    }
    
    
    //    func checkIfNoBtnIsClicked(){
    //        //If True, hide Volume bar
    //        if firstBtnOutlet.isSelected{
    //            soundVolumeView.isHidden = true
    //        }
    //    }
    
    @IBAction func firstSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func secondSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func thirdSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func fourthSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func fifthSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func sixthSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func seventhSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func eigthSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func ninthSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func tenthSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func eleventhSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func twelfthSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    @IBAction func thirteenthSoundBtn(_ sender: UIButton) {
        soundPresenter.soundButtonClicked(senderOutlet: btnBackgroundImages[sender.tag], sender: sender)
    }
    
    //Send To Premium Popup
    @IBAction func fourteenthSoundBtn(_ sender: UIButton) {
        sendToPopup()
    }
    @IBAction func fifteenthSoundBtn(_ sender: UIButton) {
        sendToPopup()
    }
    @IBAction func sixteenthSoundBtn(_ sender: UIButton) {
        sendToPopup()
    }
    @IBAction func seventeenthSoundBtn(_ sender: UIButton) {
        sendToPopup()
    }
    @IBAction func eighteenthSoundBtn(_ sender: UIButton) {
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

extension UIImage {
    func resized(toWidth width: CGFloat) -> UIImage? {
        let canvasSize = CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))
        UIGraphicsBeginImageContextWithOptions(canvasSize, false, scale)
        defer { UIGraphicsEndImageContext() }
        draw(in: CGRect(origin: .zero, size: canvasSize))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
