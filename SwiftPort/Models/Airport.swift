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
    var weather = Weather()
    
    init(hangarCapacity: Int, weatherConditions: String) {
        self.hangarCapacity = hangarCapacity
        self.weather.setWeather(conditions: weatherConditions)
    }
    
    func land(plane: Plane) {
        if self.hangar.count < self.hangarCapacity {
            if self.weather.getWeather() == "sunny" {
                self.hangar.append(plane)
            }
        }
    }
    
    func takeOff(plane: Plane) {
        if let planeIndex = hangar.firstIndex(where: { $0 === plane }) {
            if self.weather.getWeather() == "sunny" {
                self.hangar.remove(at: planeIndex)
            } 
        }
    }
    
    func hasInItsHangar(plane: Plane) -> Bool {
        return self.hangar.contains { $0 === plane }
    }
}
