//
//  PremiumPopupViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-21.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class PremiumPopupVC_UI: UIViewController, UIPageViewControllerDelegate{
    
    
    @IBOutlet weak var backgroundPopupImage: UIImageView!
    @IBOutlet weak var premiumContainerView: UIView!
    @IBOutlet weak var continueBtnOutlet: UIButton!
    @IBOutlet weak var firstSubBtnOutlet: UIButton!
    @IBOutlet weak var secondSubBtnOutlet: UIButton!
    @IBOutlet weak var thirdSubBtnOutlet: UIButton!
    @IBOutlet weak var premiumAvatarImage: UIImageView!
    @IBOutlet weak var mostPopularView: UIView!
    
    @IBOutlet weak var firstPopupBtnView: UIView!
    @IBOutlet weak var secondPopupBtnView: UIView!
    @IBOutlet weak var thirdPopupBtnView: UIView!
    
    @IBOutlet weak var popupCollectionView: UICollectionView!
    @IBOutlet weak var popupCVPageController: UIPageControl!
   var test = 5
    
    lazy var popupCollectionView_UI: PopupCollectionView_UI = {
        print("in lazy")
        let popupCollectionView_UI = PopupCollectionView_UI(popupCVPageController : popupCVPageController, popupCollectionView : popupCollectionView)
        
        return popupCollectionView_UI
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popupCollectionView.dataSource = self.popupCollectionView_UI
        popupCollectionView.delegate = self.popupCollectionView_UI
        
        setupPremiumPopupUI()
        
        
    }
    
    
    
    func setupPremiumPopupUI(){
        premiumContainerView.normalButtonUI()
        firstSubBtnOutlet.normalButtonUI()
        secondSubBtnOutlet.normalButtonUI()
        thirdSubBtnOutlet.normalButtonUI()
        continueBtnOutlet.premiumPopupContinueUI()
        backgroundPopupImage.addBlurEffect()
        premiumAvatarImage.goldBackground()
        mostPopularView.mostPopularButtonUI()
        firstPopupBtnView.disselectedPopupButtonsUI()
        secondPopupBtnView.selectedPopupButtonUI()
        thirdPopupBtnView.disselectedPopupButtonsUI()
    }
    
    @IBAction func dismissPopupBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
