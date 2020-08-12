//
//  Apple.swift
//  SnakeGame
//
//  Created by Ivan Kochetkov on 12/08/2020.
//  Copyright © 2020 Ivan Kochetkov. All rights reserved.
//

import SpriteKit

final class SnakeHead: SnakeBodyPart {

    init(at point: CGPoint) {
        super.init(at: point, diameter: 20)

        physicsBody?.categoryBitMask = CollisionCategories.snakeHead
        physicsBody?.contactTestBitMask = CollisionCategories.edgeBody | CollisionCategories.apple
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
