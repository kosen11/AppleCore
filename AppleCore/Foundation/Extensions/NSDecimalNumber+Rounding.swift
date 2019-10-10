//
//  NSDecimalNumber+Rounding.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/6/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension NSDecimalNumber {
    func roundCurrency() -> NSDecimalNumber {
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
}
