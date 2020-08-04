//
//  Car.swift
//  lesson5
//
//  Created by Admin on 04.08.2020.
//

import Foundation

protocol Car {    //protocol with methods and variables
    var color: Color { get }
    var mp3: Bool { get }
    var transmission: Transmission { get }
    var year: UInt { get }
    var odometer: UInt { get }
    var doorState: Doors { get set }
    var engine: Engine { get set }
    static var carCount: UInt {get}
    
    static func countInfo()
    
    mutating func action(actionName: Actions)
 
    
}
extension Car {
   mutating func action(actionName: Actions) {
        switch actionName {
        case .engine:
            print(engine())
        case .doors:
            print(doors())
        }
    }
    
    mutating func doors() -> Doors {
        switch doorState {
        case .close:
            doorState = .open
        case .open:
            doorState = .close
        }
        return doorState
    }
    
    mutating func engine() -> Engine {
        switch engine {
        case .off:
            engine = .on
        case .on:
            engine = .off
        }
        return engine
    }
}
