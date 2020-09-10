//
//  extensions.swift
//  MonokumaAnimation
//
//  Created by Mauro Canhao on 09/09/2020.
//  Copyright © 2020 Mauro Canhao. All rights reserved.
//

import Foundation
import UIKit

extension CALayer {
    
    //Used to apply Shadow with the same attributes found in Sketch.
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.5,
        x: CGFloat = 0,
        y: CGFloat = 2,
        blur: CGFloat = 4,
        spread: CGFloat = 0)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}
