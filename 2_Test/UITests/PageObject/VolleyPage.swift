//
//  File.swift
//  UI Testing Cheat Sheet
//
//  Created by peng wang on 30/5/19.
//  Copyright © 2019 Masilotti.com. All rights reserved.
//
import Foundation
import XCTest

extension XCTestCase {
    
    func waitForElementToAppear(element: XCUIElement){
        let existPredicate = NSPredicate(format: "exists == true")
        expectation(for: existPredicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
    }
}

class VolleyPage{
    
    let manageTeam = XCUIApplication().tables.cells.staticTexts["Manage Team"]
    let manageRoster = XCUIApplication().tables.cells.staticTexts["Manage Roster"]
    let viewSchedule = XCUIApplication().tables.cells.staticTexts["View Schedule"]
    let backButton = XCUIApplication().navigationBars.children(matching: .button).matching(identifier: "Back").element(boundBy: 0)
    
    
    func gotoManageTeam(testcase: XCTestCase){
        testcase.waitForElementToAppear(element: manageTeam)
        
        manageTeam.tap()
    }
    
    func gotoManageRoster(testcase: XCTestCase){
        testcase.waitForElementToAppear(element: manageRoster)
        manageRoster.tap()
    }
    
    func gotoViewSchedule(testcase: XCTestCase){
        testcase.waitForElementToAppear(element: viewSchedule)
        viewSchedule.tap()
    }
    
    func testlink(testcase: XCTestCase) {
        
        XCUIApplication().buttons["More Info"].tap()
        XCUIApplication().links["Volleyball (disambiguation)"].tap()
        XCUIApplication().navigationBars["Volleyball?"].buttons["Back"].tap()
        
    }
    
    func tapBackButton(testcase: XCTestCase){
        backButton.tap()
    }
}
