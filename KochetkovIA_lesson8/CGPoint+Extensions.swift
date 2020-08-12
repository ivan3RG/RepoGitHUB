//
//  Apple.swift
//  SnakeGame
//
//  Created by Ivan Kochetkov on 12/08/2020.
//  Copyright © 2020 Ivan Kochetkov. All rights reserved.
//

import UIKit

extension CGPoint {

    func relative(to frame: CGRect) -> CGPoint {
        return CGPoint(x: frame.origin.x + x, y: frame.origin.y + y)
    }
}
