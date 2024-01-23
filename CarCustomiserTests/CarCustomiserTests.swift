//
//  CarCustomiserTests.swift
//  CarCustomiserTests
//
//  Created by Ed Slack on 19/01/2024.
//

import XCTest

class CarCustomiserTests: XCTestCase {
    
    func testNewCarGivesMeACarWithAllAttributesSet() {
        //arrange
        let car = Car(make: "Audi", model: "R8", topSpeed: 203, acceleration: 3.2, handling: 8)
        //assert
        XCTAssertEqual(car.make, "Audi")
        XCTAssertEqual(car.model, "R8")
        XCTAssertEqual(car.topSpeed, 203)
        XCTAssertEqual(car.acceleration, 3.2)
        XCTAssertEqual(car.handling, 8)
    
    }
    
    func testDisplayStatsShowsTheCorrectAttributesOfTheCar() {
        //arrange
        let starterCars = StarterCars()
        
        let car = starterCars.cars[0]
        
        //assert
        
        let actual = """
                    Make of Car: \(car.make)
                    Model: \(car.model)
                    Top Speed: \(car.topSpeed)mph
                    Acceleration (0-60): \(car.acceleration)s
                    Handling: \(car.handling)
                """
        XCTAssertEqual(car.displayStats(),actual)
    }
    
}
