//
//  Truck.swift
//  KochetovIVA_lesson4
//
//  Created by Иван Кочетков on 28.07.2020.
//  Copyright © 2020 Ivan Kochetkov. All rights reserved.
//

import Foundation
import SwiftUI

class Truck: Car {
    let carrying: Int
    let truckType: TruckType
    var cargo: Int
    static var truckCount = 0
    init(color: Color, mp3: Bool, transmission: Transmission, year: UInt, odometer: UInt, doorState: Doors, carrying: Int, truckType: TruckType, cargo: Int){
        self.carrying = carrying
        self.truckType = truckType
        self.cargo = cargo
        Truck.truckCount += 1
        super.init(color: color, mp3: mp3, transmission: transmission, year: year, odometer: odometer, doorState: doorState)
    }
    deinit{
        Truck.carCount -= 1 //total counter
        Truck.truckCount -= 1 //truck counter
    }
    override func action(actionName: Actions) {
        switch actionName {
            case .Doors:
            if self.doorState == .open {
                self.doorState = .close
            } else {
                self.doorState = .open
            }
        case .Trunk(let one):
            if (one + cargo) <= carrying && (one + cargo) >= 0 {
                cargo = cargo + one
            } else {
                print("недопустимое количество груза")
            }        default:
            print("Не тот тип машины!")
        }
    }
    static func truckCountInfo() {
        print("из них: \(self.truckCount) грузовиков")
    }
}
