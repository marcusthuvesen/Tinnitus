//
//  SoundPresenter.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-09-05.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation

protocol SoundDelegate : NSObjectProtocol{
    func soundBtnSelected()
    func soundBtnUnselected()
}

class SoundPresenter{
    weak private var soundDelegate : SoundDelegate?
    //private var provideFactText = ProvideFactText()
    
    
    
    
    
    
}
