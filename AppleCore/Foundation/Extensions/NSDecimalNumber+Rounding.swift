//
//  NSDecimalNumber+Rounding.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/6/19.
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

public extension NSDecimalNumber {
    static var negativeOne: NSDecimalNumber { return NSDecimalNumber(value: -1) }
    
    var roundedCurrency: NSDecimalNumber {
        return roundToScale(scale: 2)
    }
    
    func roundToScale(scale: Int16) -> NSDecimalNumber {
        return self.rounding(accordingToBehavior: NSDecimalNumberHandler(roundingMode: .plain,
                                                                         scale: scale,
                                                                         raiseOnExactness: false,
                                                                         raiseOnOverflow: false,
                                                                         raiseOnUnderflow:false,
                                                                         raiseOnDivideByZero: false))
    }
    
    var negative: NSDecimalNumber {
        return self.multiplying(by: NSDecimalNumber.negativeOne)
    }
}
