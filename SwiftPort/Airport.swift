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
}
