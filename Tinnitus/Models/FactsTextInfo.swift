//
//  FactsTextInfo.swift
//  Tinnitus
//
//  Created by Marcus Thuvesen on 2019-08-30.
//  Copyright © 2019 Marcus Thuvesen. All rights reserved.
//

import Foundation

class ProvideFactText{
   
    func getCorrectText(buttonSelected : String) -> (String, String){
        
        var textToSendBack : (String, String)
        
        switch buttonSelected {
        case "First":
           textToSendBack = fetchFirstText()
        case "Second":
           textToSendBack = fetchSecondText()
        case "Third":
           textToSendBack = fetchThirdText()
        case "Fourth":
           textToSendBack = fetchFourthText()
        default:
          textToSendBack = fetchFirstText()
        }
        
        return textToSendBack
    }
    
    func fetchFirstText() -> (String, String){
        let firstFactsTitle = "FÖRSTA TITELN"
        let firstFactsText = "FÖRSTA TEXTEN"
        return (firstFactsTitle, firstFactsText)
    }
    
    func fetchSecondText() -> (String, String){
        let secondFactsTitle = "ANDRA TITELN"
        let secondFactsText = "ANDRA TEXTEN"
        return (secondFactsTitle, secondFactsText)
    }
    
    func fetchThirdText() -> (String, String){
        let thirdFactsTitle = "TREDJE TITELN"
        let thirdFactsText = "TREDJE TEXTEN"
        return (thirdFactsTitle, thirdFactsText)
    
    }
    func fetchFourthText() -> (String, String){
        let fourthFactsTitle = "FJÄRDE TITELN"
        let fourthFactsText = "FJÄRDE TEXTEN"
        return (fourthFactsTitle,fourthFactsText)
    }
    
}
