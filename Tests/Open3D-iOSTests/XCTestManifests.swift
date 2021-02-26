import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Open3D_iOSTests.allTests),
    ]
}
#endif
