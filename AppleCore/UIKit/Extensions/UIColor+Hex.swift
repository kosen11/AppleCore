//
//  UIColorX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/12/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    convenience init(hex: UInt32) {
        self.init(hex: hex, alpha: 1.0)
    }
    
    convenience init(hex: UInt32, alpha: CGFloat) {
        let r: CGFloat = CGFloat(hex >> 16 & 0xFF) / 255.0;
        let g: CGFloat = CGFloat(hex >> 8 & 0xFF) / 255.0;
        let b: CGFloat = CGFloat(hex & 0xFF) / 255.0;
        
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
}
