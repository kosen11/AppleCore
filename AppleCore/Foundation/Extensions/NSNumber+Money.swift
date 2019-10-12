//
//  NSNumber+Money.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/25/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension NSNumber {
    var currencyString: String {
        return NumberFormatter.currency.string(from: self) ?? self.stringValue
    }
    
    var percentageString: String {
        get {
            let value = NumberFormatter.percentage.string(from: self) ?? self.stringValue
            return "\(value)%"
        }
    }
    
    var taxString: String {
        get {
            let value = NumberFormatter.tax.string(from: self) ?? self.stringValue
            return "\(value)%"
        }
    }
    
    var minorUnits: Int {
        return (Int)(self.doubleValue * 100.0 + 0.5)
    }
}
