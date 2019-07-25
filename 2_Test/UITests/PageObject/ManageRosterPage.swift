//
//  ManageRoster.swift
//  Volley
//
//  Created by peng wang on 30/5/19.
//  Copyright © 2019 Masilotti.com. All rights reserved.
//

import Foundation
import XCTest

class ManageRosterPage {
    
    let Name = XCUIApplication().staticTexts["Adrienne"]
    let backButton = XCUIApplication().navigationBars.children(matching: .button).matching(identifier: "Back").element(boundBy: 0)
    
    
    func reorderName(testcase: XCTestCase) {
        
        let Joe = XCUIApplication().tables.cells.buttons.matching(identifier: "Reorder Joe").element
        
        XCUIApplication().tables.cells.buttons.matching(identifier: "Reorder Adrienne").element.press(forDuration: 3, thenDragTo: Joe)
        
    }
    
    func refreshPage(testcase: XCTestCase) {
        
        let start = Name.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0))
        let bottom = Name.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 8))
        
        start.press(forDuration: 0, thenDragTo: bottom)
        
    }
    
    
    func tapBackbutton(testcase: XCTestCase) {
        backButton.tap()
    }
    
    
}
