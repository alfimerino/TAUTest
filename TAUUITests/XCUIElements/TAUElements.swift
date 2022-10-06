import Foundation
import XCTest

enum TAUElements: String {
    case welcomeMessage = "welcomeMessage"
    case tauLogo = "TAUlogo"
    case enterCityLabel = "enterCity"
    case cityTextField = "city"
    case enrollbutton = "enrollButton"
    case thankYouMessage = "Thanks for Joining!"
    case errorMessage = "Please enter City"

    var element: XCUIElement {
        switch self {
        case .welcomeMessage, .enterCityLabel, .thankYouMessage, .errorMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        case .cityTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .tauLogo:
            if UIDevice.current.userInterfaceIdiom == .pad {

            }
            return XCUIApplication().images[self.rawValue]
        case .enrollbutton:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
