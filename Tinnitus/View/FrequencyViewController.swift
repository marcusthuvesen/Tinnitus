//
//  ViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-06.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class FrequencyViewController: UIViewController {
    
 
    @IBOutlet weak var pinkBackgroundDesign: UIView!
    @IBOutlet weak var playOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupFrequencyUI()
    }
    
    func setupFrequencyUI(){
        playOutlet.normalButtonUI()
        pinkBackgroundDesign.layer.cornerRadius = 80
        pinkBackgroundDesign.transform = CGAffineTransform(rotationAngle: CGFloat(30 * M_PI/180));
    }

    @IBAction func playBtn(_ sender: Any) {
    }
    
}

