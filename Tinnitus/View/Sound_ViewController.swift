//
//  Sound_ViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-07.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class Sound_ViewController: UIViewController {
    
    //Button Outlets
    @IBOutlet weak var firstBtnOutlet: UIButton!
    @IBOutlet weak var secondBtnOutlet: UIButton!
    @IBOutlet weak var thirdBtnOutlet: UIButton!
    @IBOutlet weak var fourthBtnOutlet: UIButton!
    @IBOutlet weak var fifthBtnOutlet: UIButton!
    @IBOutlet weak var sixthBtnOutlet: UIButton!
    @IBOutlet weak var menuBtnOne: UIButton!
    @IBOutlet weak var menuBtnTwo: UIButton!
    @IBOutlet weak var menuBtnThree: UIButton!
    
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    
    func setupUI(){
        firstBtnOutlet.normalButtonUI()
        secondBtnOutlet.normalButtonUI()
        thirdBtnOutlet.normalButtonUI()
        fourthBtnOutlet.normalButtonUI()
        fifthBtnOutlet.normalButtonUI()
        sixthBtnOutlet.normalButtonUI()
        firstSliderOutlet.setThumbImage(UIImage(named: "rain3"), for: .normal)
        secondSliderOutlet.setThumbImage(UIImage(named: "storm2"), for: .normal)
        thirdSliderOutlet.setThumbImage(UIImage(named: "sunset2"), for: .normal)
        
        firstOutletBlurImage.normalButtonUI()
        secondOutletBlurImage.normalButtonUI()
        thirdOutletBlurImage.normalButtonUI()
        fourthOutletBlurImage.normalButtonUI()
        fifthOutletBlurImage.normalButtonUI()
        sixthOutletBlurImage.normalButtonUI()
        menuBtnOne.normalButtonUI()
        menuBtnTwo.normalButtonUI()
        menuBtnThree.normalButtonUI()
    }
    
    
}
