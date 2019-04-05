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
    
    func testCanTellAPlaneToTakeOff() {
        let plane = Plane()
        airport.land(plane: plane)
        XCTAssertTrue(airport.hasInItsHangar(plane: plane))
        airport.takeOff(plane: plane)
        XCTAssertFalse(airport.hasInItsHangar(plane: plane))
    }
    
    func testPlaneCannotLandIfHangarIsFull() {
        let planeOne = Plane()
        let planeTwo = Plane()
        let fullAirport = Airport(hangarCapacity: 1)
        fullAirport.land(plane: planeOne)
        fullAirport.land(plane: planeTwo)
        XCTAssertFalse(fullAirport.hasInItsHangar(plane: planeTwo))
    }

}
