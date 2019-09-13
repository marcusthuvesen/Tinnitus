//
//  NewFavoritePopup_UI.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-11.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class NewFavoritePopup_UI: UIViewController {

    @IBOutlet weak var saveButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupFavoriteUI()
    }

    func setupFavoriteUI(){
        saveButtonOutlet.premiumPopupContinueUI()
    }
    
    @IBAction func saveBtnAction(_ sender: UIButton) {
    }
    
    @IBAction func dismissFavoriteBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
