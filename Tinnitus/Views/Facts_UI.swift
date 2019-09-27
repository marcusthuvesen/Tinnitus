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
    @IBOutlet weak var playBarContainerView: PlayBar!
    
    let factsPresenter = FactsPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupFactUI()
        setupFactsDelegate()
    }
    override func viewDidAppear(_ animated: Bool) {
        factsPresenter.setPlayButtonUI()
    }
    
    func setupFactUI(){
//        firstFactBtnOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
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
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//        
//        // Create a variable that you want to send
//        var newProgramVar = Program(category: "Some", name: "Text")
//        
//        // Create a new variable to store the instance of PlayerTableViewController
//        let destinationVC = segue.destinationViewController as PlayerTableViewController
//        destinationVC.programVar = newProgramVar
//    }
    
}
