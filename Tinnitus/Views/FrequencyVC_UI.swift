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

class FrequencyVC_UI: UIViewController, FrequencyDelegate {
  
    
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
    @IBOutlet weak var volumeLabel: UILabel!
    
    var audioPlayer = AVAudioPlayer()
    let audioSession = AVAudioSession.sharedInstance()
    let volumeView = MPVolumeView()
    let myUnit = ToneOutputUnit()
    var frequencyPresenter = FrequencyPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            try audioSession.setActive(true)
            startObservingVolumeChanges()
        } catch {
        }
        startObservingVolumeChanges()
        setupFrequencyDelegate()
        setupFrequencyUI()
        setupVolumeSliderView()
        setupToneSound()
    }
    
    func setupFrequencyDelegate(){
        frequencyPresenter.setFrequencyViewDelegate(frequencyDelegate: self)
    }
    
    func setupVolumeSliderView(){
        volumeView.frame = CGRect(x: 0, y: 0, width: 0.9*volumeContainerView.frame.width, height: volumeContainerView.frame.height)
        volumeContainerView.addSubview(volumeView)
    }
   
    
    func setupToneSound(){
        
        myUnit.setFrequency(freq: 0)
        myUnit.setToneVolume(vol: 0.5)
        myUnit.enableSpeaker()
        myUnit.setToneTime(t: 20000)
    }
    
    func setupFrequencyUI(){
        pinkBackgroundDesign.layer.cornerRadius = 80
        pinkBackgroundDesign.transform = CGAffineTransform(rotationAngle: CGFloat(20 * Double.pi/180))
        firstFreqOutlet.normalButtonUI()
        secondFreqOutlet.normalButtonUI()
        thirdFreqOutlet.normalButtonUI()
        fourthFreqOutlet.normalButtonUI()
        fifthFreqOutlet.normalButtonUI()
        sixthFreqOutlet.normalButtonUI()
    }
    private struct Observation {
        static let VolumeKey = "outputVolume"
        static var Context = 0
        
    }
    func startObservingVolumeChanges() {
        audioSession.addObserver(self, forKeyPath: Observation.VolumeKey, options: [.initial, .new], context: &Observation.Context)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if context == &Observation.Context {
            if keyPath == Observation.VolumeKey, let volume = (change?[NSKeyValueChangeKey.newKey] as? NSNumber)?.floatValue {
                volumeLabel.text = "Volume: \(Int(volume*100))%"
            }
        } else {
            super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
        }
    }
    
    func stopObservingVolumeChanges() {
        audioSession.removeObserver(self, forKeyPath: Observation.VolumeKey, context: &Observation.Context)
    }
    
    func buttonSelected(buttonOutlet : UIButton) {
        buttonOutlet.normalButtonIsClickedUI()
    }
    
    func buttonUnselected( buttonOutlet : UIButton) {
        buttonOutlet.backgroundColor = UIView.CustomColors.blue
    }
    
    @IBAction func frequencyChanged(_ sender: UISlider) {
        frequencyPresenter.frequencyAction(sender: sender, frequencyLabel: frequencyLabel, myUnit: myUnit)
    }
    @IBAction func firstSoundBtn(_ sender: UIButton) {
        myUnit.stop()
        frequencyPresenter.frequencyButtonSelected(sender: sender)
    }
    @IBAction func secondSoundBtn(_ sender: UIButton) {
        frequencyPresenter.frequencyButtonSelected(sender: sender)
    }
    @IBAction func thirdSoundBtn(_ sender: UIButton) {
        frequencyPresenter.frequencyButtonSelected(sender: sender)
    }
    @IBAction func fourthSoundBtn(_ sender: UIButton) {
        frequencyPresenter.frequencyButtonSelected(sender: sender)
    }
    @IBAction func fifthSoundBtn(_ sender: UIButton) {
        frequencyPresenter.frequencyButtonSelected(sender: sender)
    }
    @IBAction func sixthSoundBtn(_ sender: UIButton) {
        frequencyPresenter.frequencyButtonSelected(sender: sender)
    }
    
}

