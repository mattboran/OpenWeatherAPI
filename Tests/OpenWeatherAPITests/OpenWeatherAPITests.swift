import XCTest
@testable import OpenWeatherAPI

final class OpenWeatherAPITests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(OpenWeatherAPI().text, "Hello, World!")
    }
}
