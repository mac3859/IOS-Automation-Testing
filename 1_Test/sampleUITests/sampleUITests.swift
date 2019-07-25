//
//  sampleUITests.swift
//  sampleUITests
//
//  Created by Eric Zhong on 6/12/16.
//  Copyright © 2016 ravi kumar. All rights reserved.
//

import XCTest

class sampleUITests: XCTestCase {
    
    let app = XCUIApplication()
        
    override func setUp() {
        
        app.launch()

    }
    
    override func tearDown() {

        super.tearDown()
    }
    

    
    func test() {
        
//        dump(XCUIApplication())
        app.buttons["button123"].tap()
        
//        dump(XCUIApplication())
        app.alerts["RK"].buttons["OK"].tap()
        
        app.buttons.element(boundBy: 0).tap()
        app.alerts["RK"].buttons["OK"].tap()
       
    }
    
    func testsectext(){
        
        dump(XCUIApplication())
        
        app.secureTextFields["textfield123"].tap()
        app.secureTextFields["textfield123"].typeText("123456qwer")
        
    }
    
    func testslider(){
//        dump(XCUIApplication())
        
        app.sliders["slider123"].adjust(toNormalizedSliderPosition: 0.9)
        
    }
    
    func testswitch(){
        
        app.switches["switch123"].tap()
        app.switches["switch123"].tap()
        
    }
    
}
