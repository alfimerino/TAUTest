
import Foundation
import XCTest

extension TAUTestBase {
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in
            XCTAssertTrue(TAUElements.welcomeMessage.element.exists)
        }
    }

    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I Enter City") { _ in
            TAUElements.cityTextField.element.tap()
            TAUElements.cityTextField.element.typeText(city)
        }
    }

    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enroll") { _ in
            XCTAssert(TAUElements.enrollbutton.element.exists)
        }
    }

    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I should see thank you message") { _ in

            XCTAsyncAssert(TAUElements.thankYouMessage.element)
//            TAUElements.welcomeMessage.element.tap()
        }
    }
}
