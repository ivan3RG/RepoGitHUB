//
//  main.swift
//  lesson5
//
//  Created by Admin on 02.08.2020.
//

import Foundation
 
enum Color {
    case red, green, blue, white, black
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
 
enum Actions {
    case engine
    case doors
}

var car1 = SportCar(engine: .on, color: .red, mp3: true, transmission: .manual, year: 2019, odometer: 3000, doorState: .open, nitro: true, maxSpeed: 270)

print(car1.description)
car1.action(actionName: .doors)
print(car1.description)
car1.action(actionName: .engine)
print(car1.description)
 
var water_truck = TunkCar(engine: .off, color: .green, mp3: false, transmission: .manual, year: 2007, odometer: 300000, doorState: .close, volume: 1500, usedVolume: 800)

print(water_truck.description)
water_truck.action(actionName: .engine)
print(water_truck.description)
water_truck.action(actionName: .doors)
print(water_truck.description)
