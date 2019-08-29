//
//  ViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-06.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//
import Foundation
import UIKit
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
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var frequencyLabel: UILabel!
    
    //var audioPlayer = MPVolumeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupFrequencyUI()
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
    @IBAction func volumeChanged(_ sender: UISlider) {
      MPVolumeView.setVolume(sender.value)
        print(sender.value)
       print(AVAudioSession.sharedInstance().outputVolume)
    }
    
    @IBAction func firstSoundBtn(_ sender: UIButton) {
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

extension MPVolumeView {
    static func setVolume(_ volume: Float) {
        // Need to use the MPVolumeView in order to change volume, but don't care about UI set so frame to .zero
        let volumeView = MPVolumeView(frame: .zero)
        // Search for the slider
        let slider = volumeView.subviews.first(where: { $0 is UISlider }) as? UISlider
        // Update the slider value with the desired volume.
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.01) {
            slider?.value = volume
        }
        // Optional - Remove the HUD
        if let app = UIApplication.shared.delegate as? AppDelegate, let window = app.window {
            volumeView.alpha = 0.000001
            window.addSubview(volumeView)
        }
    }
}
