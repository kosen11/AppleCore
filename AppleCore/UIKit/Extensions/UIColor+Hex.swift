//
//  UIColorX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/12/19.
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

public extension UIColor {
    convenience init(hex: UInt32) {
        self.init(hex: hex, alpha: 1.0)
    }
    
    convenience init(hex: UInt32, alpha: CGFloat) {
        let r = CGFloat(hex >> 16 & 0xFF) / 255.0
        let g = CGFloat(hex >> 8 & 0xFF) / 255.0
        let b = CGFloat(hex & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
}
