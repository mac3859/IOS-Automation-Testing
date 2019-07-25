//
//  ViewSchedule.swift
//  UI Testing Cheat Sheet
//
//  Created by peng wang on 30/5/19.
//  Copyright © 2019 Masilotti.com. All rights reserved.
//

import Foundation
import XCTest

class ViewSchedulePage: XCTestCase {
    
    let app = XCUIApplication()
    
    func tapFinishGame() {
        
        app.buttons["Finish Game"].tap()
        
    }
    
    func loadMoreGame() {
        
        app.buttons["Load More Games"].tap()
        
        let nextgame = self.app.staticTexts["Game 4 - Tomorrow"]
        let existsPredicate = NSPredicate(format: "exists == true")
        
        expectation(for: existsPredicate, evaluatedWith: nextgame, handler: nil)
        waitForExpectations(timeout: 10, handler: nil)
        
        XCTAssert(nextgame.exists)
    }
}
