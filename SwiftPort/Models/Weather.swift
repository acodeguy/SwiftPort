//
//  Weather.swift
//  SwiftPort
//
//  Created by Andrew on 06/04/2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import Foundation

class Weather {
    
    private var conditions = "sunny"
    
    func setWeather(conditions: String) {
        self.conditions = conditions
    }
    
    func getWeather() -> String {
        return self.conditions
    }
}
