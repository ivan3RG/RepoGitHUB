//
//  Car.swift
//  KochetovIVA_lesson4
//
//  Created by Иван Кочетков on 28.07.2020.
//  Copyright © 2020 Ivan Kochetkov. All rights reserved.
//

import Foundation
import SwiftUI
class Car {
    let color: Color
    let mp3: Bool
    let transmission: Transmission
    let year: UInt
    var odometer: UInt
    var doorState: Doors
    static var carCount = 0
    
    init(color: Color, mp3: Bool, transmission: Transmission, year: UInt, odometer: UInt, doorState: Doors) {
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.year = year
        self.odometer = odometer
        self.doorState = doorState
        Car.carCount += 1
    }
    
    deinit {
        Car.carCount -= 1
    }
    
     static func countInfo(){
           print("Выпущено и не списано \(self.carCount) автомобилей")
    }
    func action(actionName: Actions){
    // empty function
    }
}
