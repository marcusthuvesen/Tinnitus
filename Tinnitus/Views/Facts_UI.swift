//
//  FactsViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-21.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class Facts_UI: UIViewController {
    
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
    
    @IBAction func firstFactBtn(_ sender: Any) {
        pushToVC()
    }
    @IBAction func secondFactBtn(_ sender: Any) {
        pushToVC()
    }
    @IBAction func thirdFactBtn(_ sender: Any) {
        pushToVC()
    }
    @IBAction func fourthFactBtn(_ sender: Any) {
        pushToVC()
    }
    
    func pushToVC(){
        let specificFactVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SpecificFact_UI") as! SpecificFact_UI
        specificFactVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        tabBarController?.present(specificFactVC, animated: true)
    }
    
}
