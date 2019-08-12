//
//  ViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-06.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class FrequencyViewController: UIViewController {
    
    @IBOutlet weak var playOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupFrequencyUI()
    }
    
    func setupFrequencyUI(){
        playOutlet.normalButtonUI()
    }

    @IBAction func playBtn(_ sender: Any) {
    }
    
}

