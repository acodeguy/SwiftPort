//
//  SwiftPortTests.swift
//  SwiftPortTests
//
//  Created by Andrew on 08/03/2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import XCTest
@testable import SwiftPort

class SwiftPortTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAnAirportHasAHangarOfAGivenCapacity() {
        var airport = Airport(hangarCapacity: 5)
        XCTAssertEqual(airport.hangarCapacity, 5)
    }

}
