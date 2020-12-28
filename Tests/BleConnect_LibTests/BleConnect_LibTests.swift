import XCTest
@testable import BleConnect_Lib

final class BleConnect_LibTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(BleConnect_Lib().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
