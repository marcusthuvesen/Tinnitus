//
//  ViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-06.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//
import Foundation
import UIKit
import AVFoundation
import MediaPlayer

class FrequencyVC_UI: UIViewController {
    
 
    @IBOutlet weak var pinkBackgroundDesign: UIView!
    @IBOutlet weak var firstFreqOutlet: UIButton!
    @IBOutlet weak var secondFreqOutlet: UIButton!
    @IBOutlet weak var thirdFreqOutlet: UIButton!
    @IBOutlet weak var fourthFreqOutlet: UIButton!
    @IBOutlet weak var fifthFreqOutlet: UIButton!
    
    @IBOutlet weak var sixthFreqOutlet: UIButton!
    @IBOutlet weak var frequencySlider: UISlider!
    @IBOutlet weak var frequencyLabel: UILabel!
    @IBOutlet weak var volumeContainerView: UIView!
    

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupFrequencyUI()
        // 1
       setupVolumeSliderView()
    }
    
    func setupVolumeSliderView(){
        if let asset = NSDataAsset(name: "amorphis-my-enemy") {
            
            // 2
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback)
                try AVAudioSession.sharedInstance().setActive(true)
                try audioPlayer = AVAudioPlayer(data:asset.data, fileTypeHint:"mp3")
                audioPlayer.prepareToPlay()
            } catch {
                print("error")
            }
        }
        
        var volumeView = MPVolumeView()
       // volumeView.backgroundColor = UIColor(white: 1, alpha: 0.8)
        volumeView.frame = CGRect(x: 0, y: 0, width: 0.9*volumeContainerView.frame.width, height: volumeContainerView.frame.height)
        print("width \(volumeContainerView.frame.width)")
        print("height \(volumeContainerView.frame.height)")
        print("width2 \(volumeView.frame.width)")
        print("height2 \(volumeView.frame.height)")
        
//        let topConstraint = NSLayoutConstraint(item: volumeView, attribute: .top, relatedBy: .equal, toItem: volumeContainerView, attribute: .top, multiplier: 1, constant: 0)
//        let bottomConstraint = NSLayoutConstraint(item: volumeView, attribute: .bottom, relatedBy: .equal, toItem: volumeContainerView, attribute: .bottom, multiplier: 1, constant: 0)
//        let leadingConstraint = NSLayoutConstraint(item: volumeView, attribute: .leading, relatedBy: .equal, toItem: volumeContainerView, attribute: .leading, multiplier: 1, constant: 0)
//        let trailingConstraint = NSLayoutConstraint(item: volumeView, attribute: .trailing, relatedBy: .equal, toItem: volumeContainerView, attribute: .trailing, multiplier: 1, constant: 0)
//
//
        //volumeView.addConstraints([topConstraint, bottomConstraint, leadingConstraint, trailingConstraint])
        
        volumeContainerView.addSubview(volumeView)
        volumeContainerView.bringSubviewToFront(volumeView)
        self.view.layoutIfNeeded()

    }
    
    func setupFrequencyUI(){
        pinkBackgroundDesign.layer.cornerRadius = 80
        pinkBackgroundDesign.transform = CGAffineTransform(rotationAngle: CGFloat(20 * M_PI/180))
        firstFreqOutlet.normalButtonUI()
        secondFreqOutlet.normalButtonUI()
        thirdFreqOutlet.normalButtonUI()
        fourthFreqOutlet.normalButtonUI()
        fifthFreqOutlet.normalButtonUI()
        sixthFreqOutlet.normalButtonUI()
    }

    @IBAction func frequencyChanged(_ sender: UISlider) {
        let frequencyValue = String(Int(sender.value * 10000))
       frequencyLabel.text = frequencyValue + " KHz"
    }

    @IBAction func firstSoundBtn(_ sender: UIButton) {
        audioPlayer.play()
        
        // 2
        print("here")
    
       sender.isSelected = !sender.isSelected
        if sender.isSelected{
            firstFreqOutlet.normalButtonIsClickedUI()
        }else{
            firstFreqOutlet.backgroundColor = UIView.CustomColors.blue
        }
    }
    @IBAction func secondSoundBtn(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            secondFreqOutlet.normalButtonIsClickedUI()
        }else{
            secondFreqOutlet.backgroundColor = UIView.CustomColors.blue
        }
    }
    @IBAction func thirdSoundBtn(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            thirdFreqOutlet.normalButtonIsClickedUI()
        }else{
            thirdFreqOutlet.backgroundColor = UIView.CustomColors.blue
        }
    }
    @IBAction func fourthSoundBtn(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            fourthFreqOutlet.normalButtonIsClickedUI()
        }else{
            fourthFreqOutlet.backgroundColor = UIView.CustomColors.blue
        }
        
    }
    @IBAction func fifthSoundBtn(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            fifthFreqOutlet.normalButtonIsClickedUI()
        }else{
            fifthFreqOutlet.backgroundColor = UIView.CustomColors.blue
        }
    }
    @IBAction func sixthSoundBtn(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            sixthFreqOutlet.normalButtonIsClickedUI()
        }else{
            sixthFreqOutlet.backgroundColor = UIView.CustomColors.blue
        }
    }
    
}

