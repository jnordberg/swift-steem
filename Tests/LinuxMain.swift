import XCTest

import SteemIntegrationTests
import SteemTests

var tests = [XCTestCaseEntry]()
tests += SteemTests.__allTests()
tests += SteemIntegrationTests.__allTests()

XCTMain(tests)
