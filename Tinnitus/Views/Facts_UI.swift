//
//  FactsViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-21.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class Facts_UI: UIViewController, FactsDelegate {
   
    
    
    @IBOutlet weak var firstFactBtnOutlet: UIButton!
    @IBOutlet weak var secondFactBtnOutlet: UIButton!
    @IBOutlet weak var thirdFactBtnOutlet: UIButton!
    @IBOutlet weak var fourthFactBtnOutlet: UIButton!
    
    let factsPresenter = FactsPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupFactUI()
        setupFactsDelegate()
    }
    
    func setupFactUI(){
//        firstFactBtnOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
    }
    
    func setupFactsDelegate(){
        factsPresenter.setFactsViewDelegate(factsDelegate : self)
    }
    
    func displayText(specificTitleText: String, specificTextViewText : String) {
        pushToVC(specificFactTitleText: specificTitleText, specificTextViewText: specificTextViewText)
    }
    
    
    @IBAction func firstFactBtn(_ sender: Any) {
        factsPresenter.factButtonSelected(buttonPressed: "First")
    }
    @IBAction func secondFactBtn(_ sender: Any) {
        factsPresenter.factButtonSelected(buttonPressed: "Second")
        
    }
    @IBAction func thirdFactBtn(_ sender: Any) {
        factsPresenter.factButtonSelected(buttonPressed: "Third")
        
    }
    @IBAction func fourthFactBtn(_ sender: Any) {
        factsPresenter.factButtonSelected(buttonPressed: "Fourth")
    }
    
    func pushToVC(specificFactTitleText : String, specificTextViewText : String){
        let specificFactVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SpecificFact_UI") as! SpecificFact_UI
        specificFactVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        specificFactVC.factTitleText = specificFactTitleText
        specificFactVC.factTextViewText = specificTextViewText
        tabBarController?.present(specificFactVC, animated: true)
    }
    
}
