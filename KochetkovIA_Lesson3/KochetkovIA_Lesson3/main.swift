//
//  main.swift
//  KochetkovIA_Lesson3
//
//  Created by Иван Кочетков on 23.07.2020.
//  Copyright © 2020 Ivan Kochetkov. All rights reserved.
//

import Foundation

enum Brand: String { //In the structure, I could introduce a parameter validation check, but I'm too lazy
    case BMW, Mercedes, Lexus, ZAZ, GAZ, KAMAZ
}

enum actions {
    case Engine
    case Window
    case Trunk (one: Double) //if < 0, unload, else - load
}

enum windows {
    case open, close
}

enum engine {
    case start, stop
}

struct passengerCar { //it doesn't smell like a sport car
    let brand: Brand
    let year: Int
    let TrunkVolume: Double
    var engineWork: engine
    var windows: windows
    var usedTrunkVolume: Double
    
    mutating func action(actionName: actions){
        switch actionName {
        case .Engine:
            if self.engineWork == .stop {
                self.engineWork = .start
            } else {
                self.engineWork = .stop
            }
        case .Window:
             if self.windows == .open {
                self.windows = .close
            } else {
                self.windows = .open
            }
        case .Trunk(let one):
            if (one + usedTrunkVolume) <= TrunkVolume && (one + usedTrunkVolume) >= 0 {
                usedTrunkVolume = usedTrunkVolume + one
            } else {
                print("Недопустимый объем груза")
            }
        }
    }
    
    func printing(car: passengerCar){
        print("Фирма: ", car.brand,". Состояние двигателя: ", car.engineWork, ". Объем багажника: ", car.TrunkVolume, ". Количество груза: ", car.usedTrunkVolume,". Стекла: ", car.windows,". Год выпуска:", car.year)
    }
    
    init (brand: Brand, year: Int, TrunkVolume: Double, engineWork: engine, windows: windows, usedTrunkVolume: Double) {
        self.brand = brand
        self.year = year
        self.TrunkVolume = TrunkVolume
        self.engineWork = engineWork
        self.windows = windows
        self.usedTrunkVolume = usedTrunkVolume
    }
}

struct TrunkCar {
    let brand: Brand
    let year: Int
    let TrunkVolume: Double
    var engineWork: engine
    var windows: windows
    var usedTrunkVolume: Double
    
    mutating func action(actionName: actions){
        switch actionName {
        case .Engine:
            if self.engineWork == .stop {
                self.engineWork = .start
            } else {
                self.engineWork = .stop
            }
        case .Window:
             if self.windows == .open {
                self.windows = .close
            } else {
                self.windows = .open
            }
        case .Trunk(let one):
            if (one + usedTrunkVolume) <= TrunkVolume && (one + usedTrunkVolume) >= 0 {
                usedTrunkVolume = usedTrunkVolume + one
            } else {
                print("Недопустимый объем груза")
            }
        }
    }
    
    func printing(car: TrunkCar){
        print("Фирма: ", car.brand,". Состояние двигателя: ", car.engineWork, ". Объем багажника: ", car.TrunkVolume, ". Количество груза: ", car.usedTrunkVolume,". Стекла: ", car.windows,". Год выпуска:", car.year)
    }
    
    init (brand: Brand, year: Int, TrunkVolume: Double, engineWork: engine, windows: windows, usedTrunkVolume: Double) {
        self.brand = brand
        self.year = year
        self.TrunkVolume = TrunkVolume
        self.engineWork = engineWork
        self.windows = windows
        self.usedTrunkVolume = usedTrunkVolume
    }
}

var car1 = passengerCar(brand: .ZAZ, year: 1965, TrunkVolume: 100, engineWork: .stop, windows: .close, usedTrunkVolume: 50)
var car2 = passengerCar(brand: .GAZ, year: 1965, TrunkVolume: 400, engineWork: .stop, windows: .close, usedTrunkVolume: 100)
var car3 = passengerCar(brand: .BMW, year: 2003, TrunkVolume: 400, engineWork: .stop, windows: .close, usedTrunkVolume: 0)
var car4 = TrunkCar(brand: .KAMAZ, year: 1975, TrunkVolume: 5000, engineWork: .stop, windows: .close, usedTrunkVolume: 500)
var car5 = TrunkCar(brand: .GAZ, year: 1998, TrunkVolume: 1600, engineWork: .stop, windows: .close, usedTrunkVolume: 800)
var car6 = TrunkCar(brand: .Mercedes, year: 2002, TrunkVolume: 15000, engineWork: .stop, windows: .close, usedTrunkVolume: 0)
car1.printing(car: car1)
car2.printing(car: car2)
car3.printing(car: car3)
car4.printing(car: car4)
car5.printing(car: car5)
car6.printing(car: car6)

car1.action(actionName: .Engine)
car2.action(actionName: .Window)
car3.action(actionName: .Trunk(one: 100.5))
car4.action(actionName: .Engine)
car5.action(actionName: .Window)
car6.action(actionName: .Trunk(one: 10000))

car1.printing(car: car1)
car2.printing(car: car2)
car3.printing(car: car3)
car4.printing(car: car4)
car5.printing(car: car5)
car6.printing(car: car6)
