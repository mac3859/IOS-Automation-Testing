//
//  test.swift
//  UI Testing Cheat Sheet
//
//  Created by Eric Zhong on 10/01/17.
//  Copyright © 2017 Masilotti.com. All rights reserved.
//

import XCTest

class test: XCTestCase {
    
    let app = XCUIApplication()
    let firstpage = VolleyPage()
    let secondpage = ManageRosterPage()
    let thirdpage = ManageTeamPage()
    let forthpage = ViewSchedulePage()
    
    override func setUp() {
        super.setUp()
        app.launch()
       }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test() {
        
        firstpage.testlink(testcase: XCTestCase())
        firstpage.gotoManageRoster(testcase: XCTestCase())
        firstpage.tapBackButton(testcase: XCTestCase())
    }
    
    func testMangeTeamPage() {
        firstpage.gotoManageTeam(testcase: XCTestCase())
        thirdpage.testTeamName()
        thirdpage.testslider()
        
        app.keyboards.buttons["Done"].tap()
        thirdpage.testPickerWheel()
    }
    
    func testManageRosterPage() {
        
        firstpage.gotoManageRoster(testcase: XCTestCase())
        secondpage.reorderName(testcase: XCTestCase())
        secondpage.refreshPage(testcase: XCTestCase())
        app.alerts["Roster Refreshed"].buttons["Dismiss"].tap()
        
        firstpage.tapBackButton(testcase: XCTestCase())
    }
    
    func testViewSchedulePage() {
        
        firstpage.gotoViewSchedule(testcase: XCTestCase())
        forthpage.tapFinishGame()
        app.alerts["You won!"].buttons["Awesome!"].tap()
        forthpage.loadMoreGame()
        
        firstpage.tapBackButton(testcase: XCTestCase())
    }
    
}
