//
//  NSNumber+Money.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/25/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension NSNumber {
    func currencyString() -> String {
        return NumberFormatter.currency.string(from: self) ?? self.stringValue
    }
    
    func percentageString() -> String {
        let value = NumberFormatter.percentage.string(from: self) ?? self.stringValue
        return "\(value)%"
    }
    
    func taxString() -> String {
        let value = NumberFormatter.tax.string(from: self) ?? self.stringValue
        return "\(value)%"
    }
    
    //TODO: use decimal place parameter
    func minorUnits() -> Int {
        return (Int)(self.doubleValue * 100.0)
    }
}
