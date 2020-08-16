//
//  String+Money.swift
//  AppleCore
//
//  Created by Ray Pietz on 11/7/19.
//

import Foundation

public extension String {
    var majorAmount: NSDecimalNumber {
        return self.count > 0 ? NSDecimalNumber(string: self).dividing(by: NSDecimalNumber(value: 100)) : NSDecimalNumber.zero
    }
}
