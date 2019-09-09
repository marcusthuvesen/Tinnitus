//
//  PlayBar.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-03.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//
import SwiftySound
import UIKit

class PlayBar: UIView {

    let kCONTENT_XIB_NAME = "PlayBarView"
    @IBOutlet weak var playBtnOutlet: UIButton!
    @IBOutlet weak var favoriteBtnOutlet: UIButton!
    @IBOutlet weak var timerBtnOutlet: UIButton!
    @IBOutlet var playBarView: UIView!
    let toneOutPut = ToneOutputUnit()
    let soundsCurrentlyPlaying = SoundsCurrentlyPlaying()
    
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
    }
    
    @IBAction func playBtnAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            print("Play")
            dump(SoundsCurrentlyPlaying.soundsArray)
            for sound in SoundsCurrentlyPlaying.soundsArray{
                
                Sound.play(file: sound, fileExtension: "wav")
            }
            //toneOutPut.start()
            
            playBtnOutlet.setImage(UIImage(named: "pause"), for: .normal)
        } else {
            print("Stop")
            //toneOutPut.stop()
            for sound in SoundsCurrentlyPlaying.soundsArray{
                
                Sound.stop(file: sound, fileExtension: "wav")

            }
            //Sound.stopAll()
            playBtnOutlet.setImage(UIImage(named: "play"), for: .normal)
        }
    }
    
    @IBAction func favoriteBtnAction(_ sender: Any) {
    }
    
    @IBAction func timerBtnAction(_ sender: Any) {
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
