//
//  PremiumPopupViewController.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-21.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import UIKit

class PremiumPopupVC_UI: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    
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
    
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var sliderPageController: UIPageControl!
    
    var sliderImageArray = [UIImage(named: "stop"), UIImage(named: "ecg-lines2"), UIImage(named: "star2"), UIImage(named: "openLock2")]
    var sliderLabelArray = ["No Ads", "Unlimited Cure", "Save Favorites", "Unlock Sounds"]
    var sliderSubLabelArray = ["Remove all ads", "Use Tinnitus Matcher unlimited", "Favorite your mixed sounds for later use", "Access all sounds from the library"]
    var sliderTimer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderPageController.numberOfPages = sliderImageArray.count
        sliderPageController.currentPage = 0
        sliderCollectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        DispatchQueue.main.async {
            self.sliderTimer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.sliderChangeImage), userInfo: nil, repeats: true)
        }
        setupPremiumPopupUI()
    }
    
    @objc func sliderChangeImage(){
        if counter < sliderImageArray.count{
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            sliderPageController.currentPage = counter
            counter += 1
        } else{
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            sliderPageController.currentPage = counter
            counter = 1
        }
    }
    
    func setupPremiumPopupUI(){
        premiumContainerView.normalButtonUI()
        firstSubBtnOutlet.normalButtonUI()
        secondSubBtnOutlet.normalButtonUI()
        thirdSubBtnOutlet.normalButtonUI()
        continueBtnOutlet.premiumPopupContinueUI()
        backgroundPopupImage.addBlurEffect()
        premiumAvatarImage.goldBackground()
//        firstSubBtnOutlet.popupButtonsUI()
//        secondSubBtnOutlet.selectedPopupButtonUI()
//        thirdSubBtnOutlet.popupButtonsUI()
        mostPopularView.mostPopularButtonUI()
        firstPopupBtnView.disselectedPopupButtonsUI()
        secondPopupBtnView.selectedPopupButtonUI()
        thirdPopupBtnView.disselectedPopupButtonsUI()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sliderImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sliderCell", for: indexPath) as! PopupSlider_CollectionViewCell
        if let arrayImage = sliderImageArray[indexPath.row]{
            cell.sliderCellImage.image = arrayImage
            cell.sliderCellTitleLabel.text = sliderLabelArray[indexPath.row]
            cell.sliderCellSubLabel.text = sliderSubLabelArray[indexPath.row]
        }
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0,left: 0,bottom: 0,right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = sliderCollectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }

    @IBAction func dismissPopupBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
