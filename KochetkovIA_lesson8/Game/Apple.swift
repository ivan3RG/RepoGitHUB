//
//  Apple.swift
//  SnakeGame
//
//  Created by Ivan Kochetkov on 12/08/2020.
//  Copyright © 2020 Ivan Kochetkov. All rights reserved.
//

import SpriteKit

final class Apple: SKShapeNode {
    let diameter: CGFloat = 10

    convenience init(at point: CGPoint) {
        self.init()

        path = UIBezierPath(ovalIn: CGRect(x: -diameter/2, y: -diameter/2, width: diameter, height: diameter)).cgPath
        fillColor = .red
        strokeColor = UIColor.red.withAlphaComponent(0.7)
        lineWidth = 5
        position = point
        physicsBody = SKPhysicsBody(circleOfRadius: diameter / 2, center: .zero)
        physicsBody?.categoryBitMask = CollisionCategories.apple
    }

}
