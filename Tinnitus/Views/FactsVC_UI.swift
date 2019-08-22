//
//  FactsViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-21.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class FactsVC_UI: UIViewController {
    
    @IBOutlet weak var firstFactBtnOutlet: UIButton!
    @IBOutlet weak var secondFactBtnOutlet: UIButton!
    @IBOutlet weak var thirdFactBtnOutlet: UIButton!
    @IBOutlet weak var fourthFactBtnOutlet: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

       setupFactUI()
    }
    
    func setupFactUI(){
//        firstFactBtnOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
    }
    
}
