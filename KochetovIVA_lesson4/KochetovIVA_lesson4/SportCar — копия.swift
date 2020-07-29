//
//  SportCar.swift
//  KochetovIVA_lesson4
//
//  Created by Иван Кочетков on 28.07.2020.
//  Copyright © 2020 Ivan Kochetkov. All rights reserved.
//

import Foundation
import SwiftUI

class SportCar: Car {
    let maxSpeed: UInt
    var acceleration: Double
    var body: Body
    static var sportCarCount = 0
    
    init(color: Color, mp3: Bool, transmission: Transmission, year: UInt, odometer: UInt, doorState: Doors, maxSpeed: UInt, acceleration: Double, body: Body) {
        self.body = body
        self.maxSpeed = maxSpeed
        self.acceleration = acceleration
        super.init(color: color, mp3: mp3, transmission: transmission, year: year, odometer: odometer, doorState: doorState)
        SportCar.sportCarCount += 1    }
    deinit{
        SportCar.sportCarCount -= 1
    }
    override func action(actionName: Actions) {
        switch actionName {
            case .Doors:
            if self.doorState == .open {
                self.doorState = .close
            } else {
                self.doorState = .open
            }
        case .Body:
            if self.body == .cabriolet {
                print("Вы можете открыть крышу, когда захотите")
            } else {
                print("Для отдыха надо было купить кабриолет...")
            } default:
            print("Это не тот тип машины")
        }
    }
    static func sportCountInfo() {
        print("из них: \(self.sportCarCount) спортивных автомобилей")
    }
}
