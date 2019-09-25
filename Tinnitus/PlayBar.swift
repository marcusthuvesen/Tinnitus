//
//  PlayBar.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-03.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//
import UIKit

class PlayBar: UIView {
    
    let kCONTENT_XIB_NAME = "PlayBarView"
    @IBOutlet weak var playBtnOutlet: UIButton!
    @IBOutlet weak var favoriteBtnOutlet: UIButton!
    @IBOutlet weak var timerBtnOutlet: UIButton!
    @IBOutlet var playBarView: UIView!
    static var currentWindow = UIViewController()
    var playBtnManuallySelected : Bool?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed(kCONTENT_XIB_NAME, owner: self, options: nil)
        playBarView.fixInView(self)
        
        playBtnOutlet.addTarget(self, action: #selector(self.playBtnAction(sender:)), for: .touchUpInside)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.changePlayBtnImage),
            name: Notification.Name("ChangePlayImage"),
            object: nil)
    }
    
    @objc func changePlayBtnImage(notification: NSNotification){
        print("received notification")
        if let dict = notification.object as? NSDictionary{
            playBtnManuallySelected = dict["play"] as? Bool ?? false
            playBtnAction(sender: playBtnOutlet)
        }
    }
    
    @objc func playBtnAction(sender: UIButton){
        if let manuallySelectedPlay = playBtnManuallySelected{
            if manuallySelectedPlay && PlayBar.currentWindow.isKind(of: FrequencyVC_UI.self){
                print("received manually")
                sender.isSelected = true
                FrequencyVC_UI.toneOutPutUnit.start()
                playBtnOutlet.setImage(UIImage(named: "pause"), for: .normal)
                
            }
            else if manuallySelectedPlay && PlayBar.currentWindow.isKind(of: SoundVC_UI.self){
                print("received manually")
                sender.isSelected = true
                SoundVC_UI.soundsCurrentlyPlaying.playAll()
                playBtnOutlet.setImage(UIImage(named: "pause"), for: .normal)
            }
            else if !manuallySelectedPlay && PlayBar.currentWindow.isKind(of: FrequencyVC_UI.self){
                print("received manually false")
                sender.isSelected = false
                FrequencyVC_UI.toneOutPutUnit.stop()
                playBtnOutlet.setImage(UIImage(named: "play"), for: .normal)
            }
            else if !manuallySelectedPlay && PlayBar.currentWindow.isKind(of: SoundVC_UI.self){
                print("received manually false")
                sender.isSelected = false
                SoundVC_UI.soundsCurrentlyPlaying.stopAll()
                playBtnOutlet.setImage(UIImage(named: "play"), for: .normal)
            }
        }
        else{
            sender.isSelected = !sender.isSelected
            
            if sender.isSelected{
                playBtnOutlet.setImage(UIImage(named: "pause"), for: .normal)
                
                if PlayBar.currentWindow.isKind(of: SoundVC_UI.self){
                    SoundVC_UI.soundsCurrentlyPlaying.playAll()
                } else{
                    FrequencyVC_UI.toneOutPutUnit.start()
                }
                
            } else {
                playBtnOutlet.setImage(UIImage(named: "play"), for: .normal)
                SoundVC_UI.soundsCurrentlyPlaying.stopAll()
                FrequencyVC_UI.toneOutPutUnit.stop()
            }
        }
        
        playBtnManuallySelected = nil
    }
    
    @IBAction func favoriteBtnAction(_ sender: Any) {
        let vc = UIStoryboard(name: "NewFavoritePopup", bundle: nil).instantiateViewController(withIdentifier: "NewFavoritePopup") as! NewFavoritePopup_UI
        vc.modalPresentationStyle = .overCurrentContext
        let currentController = self.getCurrentViewController()
        currentController?.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func timerBtnAction(_ sender: Any) {
        let vc = UIStoryboard(name: "SleepTimerPopup", bundle: nil).instantiateViewController(withIdentifier: "SleepTimerPopup_UI") as! SleepTimerPopup_UI
        vc.modalPresentationStyle = .overCurrentContext
        let currentController = self.getCurrentViewController()
        currentController?.present(vc, animated: true, completion: nil)
        
    }
    
    func getCurrentViewController() -> UIViewController? {
        if let rootController = UIApplication.shared.keyWindow?.rootViewController {
            var currentController: UIViewController! = rootController
            while( currentController.presentedViewController != nil ) {
                currentController = currentController.presentedViewController
            }
            return currentController
        }
        return nil
    }
}

extension UIView
{
    func fixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }
}
