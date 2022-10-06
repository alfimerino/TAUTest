
import Foundation
import XCTest
import EyesXCUI


class EyesTests: TAUTestBase {

    let application = XCUIApplication()
    let sleepDurationInSeconds: UInt32 = 2

    override func setUp() {
        super.setUp()

        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        application.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testTAUWithEyesXCUI() {

        // Start the test.
        eyes.apiKey = "8wmzyF1034hZs2LQy97s3RhqdxXwf0nNemd99fEfp104hbMhE110"
        eyes.open(withApplicationName: "TAU", testName: "Live Demo of Eye XCUI SDK")
//
//        // Visual checkpoint #1.
        eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))

        XCUIApplication().buttons["enrollButton"].tap()

        eyes.checkWindow(withTag: "Please Enter City")
//
//        let clickMeButton = application.buttons["Click me!"]
//        // Click the "Click me!" button.
//        clickMeButton.tap()
//        // Wait small amount of time to make UI ready after tap.
//        sleep(sleepDurationInSeconds)
//
//        // Visual checkpoint #2.
//        eyes.check(withTag: "Click!", andSettings: Target.window())
//
//        let thumbUpOrBugImageView = application.images["ThumbUpOrBugImageView"]
//
//        // Visual checkpoint #3
//        eyes.check(withTag: "Thumb up", andSettings: Target.element(thumbUpOrBugImageView))
//
//        // Click the "Click me!" button to hide "Thumb up" image
//        clickMeButton.tap()
//        // Wait small amount of time to make UI ready after tap.
//        sleep(sleepDurationInSeconds)
//
//        // Tap on the "Simulate diffs" checkbox.
//        application.otherElements["SimulateDiffsCheckbox"].tap()
//        // Wait small amount of time to make UI ready after tap.
//        sleep(sleepDurationInSeconds)
//
//        // Visual checkpoint #4.
//        eyes.check(withTag: "Simulate Differences!", andSettings: Target.window())
//
//        // Click the "Click me!" button.
//        clickMeButton.tap()
//        // Wait small amount of time to make UI ready after tap.
//        sleep(sleepDurationInSeconds)
//
//        // Visual checkpoint #5.
//        eyes.check(withTag: "Bug has been found!", andSettings: Target.window())
//
//        // Visual checkpoint #6
//        eyes.check(withTag: "Bug", andSettings: Target.element(thumbUpOrBugImageView))

        // End the test.
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }
}
