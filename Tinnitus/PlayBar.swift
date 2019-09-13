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
    private let soundsCurrentlyPlaying = SoundsCurrentlyPlaying()
    static var currentWindow = UIViewController()
    
    
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
    }
    
    @objc func playBtnAction(sender: UIButton){
        print("In PlayBtnAction")
        playBtnOutlet.setImage(UIImage(named: "pause"), for: .normal)
    }
    
    
    
    
//    @IBAction func playBtnAction(_ sender: UIButton) {
//        sender.isSelected = !sender.isSelected
//        print("sender selected: \(sender.isSelected)")
//        changeBG()
//        if sender.isSelected{
//          print("sätter pauseImg")
//            
//            if PlayBar.currentWindow.isKind(of: SoundVC_UI.self){
//                for sound in SoundsCurrentlyPlaying.soundsArray{
//                    Sound.play(file: sound, fileExtension: "wav")
//                }
//            }
//            else if PlayBar.currentWindow.isKind(of: FrequencyVC_UI.self){
//                FrequencyVC_UI.toneOutPutUnit.start()
//            }
//            playBtnOutlet.setImage(UIImage(named: "pause"), for: .normal)
//        } else {
//           print("sätter PlayImg")
//            for sound in SoundsCurrentlyPlaying.soundsArray{
//                Sound.stop(file: sound, fileExtension: "wav")
//            }
//              FrequencyVC_UI.toneOutPutUnit.stop()
//            
//            playBtnOutlet.setImage(UIImage(named: "play"), for: .normal)
//        }
//    }
    
    @IBAction func favoriteBtnAction(_ sender: Any) {
        let soundVC = SoundVC_UI()
        soundVC.sendToFavoritePopup()
    }

    @IBAction func timerBtnAction(_ sender: Any) {}
    
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
