//
//  Car.swift
//  CarCustomiser
//
//  Created by Ed Slack on 19/01/2024.
//

import Foundation

struct Car {
    let make: String
    let model: String
    var topSpeed: Int
    var acceleration: Double
    var handling: Int
    
    func displayStats() -> String {
        var stats: String
        stats = """
                    Make of Car: \(make)
                    Model: \(model)
                    Top Speed: \(topSpeed)mph
                    Acceleration (0-60): \(acceleration)s
                    Handling: \(handling)
                """
        return stats
    }
}
