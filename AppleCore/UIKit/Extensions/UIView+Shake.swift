//
//  UIView+Shake.swift
//  iOSReports
//
//  Copyright © 2019 talech Inc.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, version 3.
//
//  This program is distributed in the hope that it will be useful, but
//  WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
//  General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program. If not, see <http://www.gnu.org/licenses/>.
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
