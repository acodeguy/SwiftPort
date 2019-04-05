//
//  Airport.swift
//  SwiftPort
//
//  Created by Andrew on 08/03/2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import Foundation

class Airport {
    
    var hangar = [Plane]()
    var hangarCapacity = 5
    
    init(hangarCapacity: Int) {
        self.hangarCapacity = hangarCapacity
    }
    
    func land(plane: Plane) {
        if self.hangar.count < self.hangarCapacity {
            self.hangar.append(plane)
        }
    }
    
    func takeOff(plane: Plane) {
        if let planeIndex = hangar.firstIndex(where: { $0 === plane }) {
            self.hangar.remove(at: planeIndex)
        }
    }
    
    func hasInItsHangar(plane: Plane) -> Bool {
        return self.hangar.contains { $0 === plane }
    }
}
