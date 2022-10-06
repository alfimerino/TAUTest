import Foundation
import XCTest
import EyesXCUI

class TAUTestBase: XCTestCase {
    var app = XCUIApplication()

    var eyes = Eyes()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()

        let config = Configuration()
        config.apiKey = "8wmzyF1034hZs2LQy97s3RhqdxXwf0nNemd99fEfp104hbMhE110";
        if #available(iOS 16, *) {
            config.statusBarExists = true
        }

        // Initialize the eyes SDK and set up with configuration.
        let eyes = Eyes()
        eyes.configuration = config
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Feed it an element, it will wait and ensure that the element exists
    func XCTAsyncAssert(_ element: XCUIElement) {
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }
}
