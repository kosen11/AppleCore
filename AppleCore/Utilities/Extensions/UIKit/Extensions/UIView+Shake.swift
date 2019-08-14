//
//  UIView+Shake.swift
//  iOSReports
//
//  Created by Ray Pietz on 7/8/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    func shake() {
        let anim = CAKeyframeAnimation.init(keyPath: "transform")
        anim.values = [
            NSValue.init(caTransform3D: CATransform3DMakeTranslation(-5.0, 0.0, 0.0)),
            NSValue.init(caTransform3D: CATransform3DMakeTranslation(5.0, 0.0, 0.0))
        ]
        anim.autoreverses = true
        anim.repeatCount = 2
        anim.duration = 0.07
        
        layer.add(anim, forKey: nil)
    }
}
