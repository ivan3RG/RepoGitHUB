//
//  main.swift
//  KochetovIVA_lesson4
//
//  Created by Иван Кочетков on 26.07.2020.
//  Copyright © 2020 Ivan Kochetkov. All rights reserved.
//


//Yes, it may be good and beautiful, but the main work also requires time, so I did the necessary minimum

import Foundation
import SwiftUI

enum Body {
    case coupe, cabriolet
}

enum Doors {
    case open, close
}

enum Transmission {
    case manual, auto
}

enum Engine {
    case on, off
}

enum TruckType {
    case dump, wagon, tank, platform
}
enum Actions {
    case Engine
    case Doors
    case Trunk (one: Int) //if < 0, unload, else - load
    case Body
}

let car1 = Car(color: .white, mp3: true, transmission: .manual, year: 1984, odometer: 40000, doorState: .open)
var car2: Car? = Car(color: .black, mp3: false, transmission: .manual, year: 1984, odometer: 20000, doorState: .open)
let car3 = Car(color: .red, mp3: true, transmission: .auto, year: 1984, odometer: 40000, doorState: .open)
let car4 = SportCar(color: .white, mp3: true, transmission: .manual, year: 1998, odometer: 40000, doorState: .open, maxSpeed: 250, acceleration: 6, body: .coupe)
var car5: SportCar? = SportCar(color: .yellow, mp3: true, transmission: .manual, year: 1998, odometer: 80000, doorState: .open, maxSpeed: 220, acceleration: 8, body: .cabriolet)
let car6 = SportCar(color: .red, mp3: true, transmission: .manual, year: 1998, odometer: 40000, doorState: .open, maxSpeed: 250, acceleration: 6, body: .coupe)
let car7 = Truck(color: .white, mp3: true, transmission: .manual, year: 1998, odometer: 40000, doorState: .open, carrying: 2500, truckType: .platform, cargo: 1000)
var car8: Truck? = Truck(color: .white, mp3: true, transmission: .manual, year: 2018, odometer: 50000, doorState: .open, carrying: 12500, truckType: .wagon, cargo: 3000)
let car9 = Truck(color: .white, mp3: true, transmission: .manual, year: 2008, odometer: 70000, doorState: .open, carrying: 1600, truckType: .tank, cargo: 400)

Car.countInfo()
SportCar.sportCountInfo()
Truck.truckCountInfo()
car2 = nil
car5 = nil
car8 = nil
Car.countInfo()
SportCar.sportCountInfo()
Truck.truckCountInfo()

print("А что на счет крыши? ", car4.action(actionName: .Body))
print("Надо ехать копать картошку", car6.action(actionName: .Trunk(one: 1000)))

print("В грузовом отсеке: ", car7.cargo, "КГ")
car7.action(actionName: .Trunk(one: 1000))
print("В грузовом отсеке: ", car7.cargo, "КГ")
print("Состояние дверей у машины: ", car9.doorState)
car9.action(actionName: .Doors)
print("Состояние дверей у машины: ", car9.doorState)
