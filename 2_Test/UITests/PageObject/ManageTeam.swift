//
//  ManageTeam.swift
//  UI Testing Cheat Sheet
//
//  Created by peng wang on 30/5/19.
//  Copyright © 2019 Masilotti.com. All rights reserved.
//

import Foundation
import XCTest

class ManageTeamPage {
    
    func testslider(){
        
        XCUIApplication().sliders.element.adjust(toNormalizedSliderPosition: 0.5)
        XCTAssert(XCUIApplication().staticTexts["5"].exists)
        
    }
    
    func testTeamName() {
        
        XCUIApplication().textFields["Team Name"].tap()
        XCUIApplication().textFields["Team Name"].typeText("1234QWER")
        
    }
    
    func testPickerWheel() {
        
        XCUIApplication().pickers.pickerWheels["Attackers Formation"].adjust(toPickerWheelValue: "6 attackers")
        XCUIApplication().pickers.pickerWheels["Setters Formation"].adjust(toPickerWheelValue: "2 setters")
    }
}
