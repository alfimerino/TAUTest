//
//  BDDTest.swift
//  TAUUITests
//
//  Created by Alfredo Merino on 10/5/22.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: TAUTestBase {
    func testThankYouMessageInBDStyle() {
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
//        let isThankMessageExists = TAUElements.thankYouMessage.element.waitForExistence(timeout: 10)
//        if isThankMessageExists {
//            XCTAssertTrue(TAUElements.thankYouMessage.element.exists)
//        }
        thenIShouldSeeThankYouMessage()
    }
}




