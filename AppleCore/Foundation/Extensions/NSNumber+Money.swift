//
//  NSNumber+Money.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/25/19.
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
