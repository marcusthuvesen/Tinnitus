//
//  NewFavoritePopup_UI.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-11.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class NewFavoritePopup_UI: UIViewController {

    @IBOutlet weak var textViewSaveFavorite: UITextField!
    @IBOutlet weak var favoritePopupAvatarImage: UIImageView!
    @IBOutlet weak var saveButtonOutlet: UIButton!
    
    @IBOutlet weak var firstFavoriteImage: UIImageView!
    @IBOutlet weak var secondFavoriteImage: UIImageView!
    @IBOutlet weak var thirdFavoriteImage: UIImageView!
    @IBOutlet weak var favoriteContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupFavoriteUI()
        hideKeyboardWhenTappedAround()
    }

    func setupFavoriteUI(){
        saveButtonOutlet.premiumPopupContinueUI()
        textViewSaveFavorite.tintColor = .white
        textViewSaveFavorite.textColor = .white
        textViewSaveFavorite.attributedPlaceholder = NSAttributedString(string: "Name Favorite",
                                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        favoritePopupAvatarImage.goldBackground()
        firstFavoriteImage.whiteBackground()
        secondFavoriteImage.image = secondFavoriteImage.image?.withRenderingMode(.alwaysTemplate)
        secondFavoriteImage.tintColor = .white
        thirdFavoriteImage.image = thirdFavoriteImage.image?.withRenderingMode(.alwaysTemplate)
        thirdFavoriteImage.tintColor = .white
        favoriteContainerView.normalButtonUI()
        
    }
    
    @IBAction func saveBtnAction(_ sender: UIButton) {
    }
    
    @IBAction func dismissFavoriteBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
