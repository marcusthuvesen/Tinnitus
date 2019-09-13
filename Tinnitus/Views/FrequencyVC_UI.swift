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
    let volumeView = MPVolumeView()
    static var toneOutPutUnit = ToneOutputUnit()
    var frequencyPresenter = FrequencyPresenter()
    let audioSession = AVAudioSession.sharedInstance()
    
    override func viewWillAppear(_ animated: Bool) {
        PlayBar.currentWindow = self
        print("currentVC \(PlayBar.currentWindow)")
        SoundVC_UI.soundsCurrentlyPlaying.stopAll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        observeVolumeChanges()
        setupFrequencyDelegate()
        setupFrequencyUI()
        setupVolumeSliderView()
        setupToneSound()
    }
    
    deinit {
        //Remove observer
    }
    
    func setupFrequencyDelegate(){
        frequencyPresenter.setFrequencyViewDelegate(frequencyDelegate: self)
    }
    
    func setupVolumeSliderView(){
        volumeView.frame = CGRect(x: 0, y: 0, width: 0.9*volumeContainerView.frame.width, height: volumeContainerView.frame.height)
        volumeContainerView.addSubview(volumeView)
    }
   
    func setupToneSound(){
        FrequencyVC_UI.toneOutPutUnit.setFrequency(freq: 0)
        FrequencyVC_UI.toneOutPutUnit.setToneVolume(vol: 0.5)
        FrequencyVC_UI.toneOutPutUnit.enableSpeaker()
        FrequencyVC_UI.toneOutPutUnit.setToneTime(t: 20000)
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
    
    func buttonSelected(buttonOutlet : UIButton) {
        buttonOutlet.normalButtonIsClickedUI()
    }
    
    func buttonUnselected( buttonOutlet : UIButton) {
        buttonOutlet.backgroundColor = UIView.CustomColors.blue
    }
    
    @IBAction func frequencyChanged(_ sender: UISlider) {
        frequencyPresenter.frequencyAction(sender: sender, frequencyLabel: frequencyLabel, toneOutPutUnit: FrequencyVC_UI.toneOutPutUnit)
    }
    @IBAction func firstSoundBtn(_ sender: UIButton) {
        FrequencyVC_UI.toneOutPutUnit.stop()
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

