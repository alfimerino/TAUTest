//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Alfredo Merino on 10/5/22.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import XCTest

final class TAUUITests: TAUTestBase {

    func testAllElementsOnMainScreen() {
        let app = XCUIApplication()
        let welcomemessageStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        welcomemessageStaticText.tap()

        app.staticTexts["enterCity"].tap()
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)

    }

    func testThankYouMessage() {
        let app = XCUIApplication()
        app.staticTexts["welcomeMessage"].tap()
        app.textFields["city"].tap()
        app.textFields["city"].typeText("london")
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }

   
}
