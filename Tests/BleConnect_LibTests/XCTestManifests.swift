import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BleConnect_LibTests.allTests),
    ]
}
#endif
