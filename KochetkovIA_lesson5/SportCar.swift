//
//  SportCar.swift
//  lesson5
//
//  Created by Admin on 04.08.2020.
//

import Foundation

class SportCar: Car {
    
    var engine: Engine
    let color: Color
    let mp3: Bool
    let transmission: Transmission
    let year: UInt
    var odometer: UInt
    var doorState: Doors
    var nitro: Bool
    var maxSpeed: UInt
    
    static var carCount: UInt = 0
    
    init(engine: Engine, color: Color, mp3: Bool, transmission: Transmission, year: UInt, odometer: UInt, doorState: Doors, nitro: Bool, maxSpeed: UInt) {
        self.engine = engine
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.year = year
        self.odometer = odometer
        self.doorState = doorState
        self.nitro = nitro
        self.maxSpeed = maxSpeed
        SportCar.carCount += 1
    }
    
    deinit {
        SportCar.carCount -= 1
    }
    
    static func countInfo() {
        print("Выпущено и не списано \(self.carCount) спортивных автомобилей")
    }
}
extension SportCar : CustomStringConvertible {
    var description: String {
        return "мотор:  \(self.engine). магнитола с mp3:  \(self.mp3). КПП:  \(self.transmission). год выпуска:  \(self.year). пробег:  \(self.odometer) км. двери:  \(self.doorState). Нитро:   \(self.nitro). максимальная скорость: \(self.maxSpeed)."
    }
}
