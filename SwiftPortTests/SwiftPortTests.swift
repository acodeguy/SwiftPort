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
    
    var airport = Airport(hangarCapacity: 5)

    override func setUp() {
        
    }

    override func tearDown() {
        
    }

    func testAnAirportHasAHangarOfAGivenCapacity() {
        XCTAssertEqual(airport.hangarCapacity, 5)
    }
    
    func testCanLandAPlaneInItsHangar() {
        let plane = Plane()
        airport.land(plane: plane)
        XCTAssertTrue(airport.hasInItsHangar(plane: plane))
    }

}
