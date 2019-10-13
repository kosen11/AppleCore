//
//  NSNumberX.swift
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
    
    var isZero: Bool {
        return self.compare(0) == .orderedSame
    }
    
    var isOne: Bool {
        return self.compare(1) == .orderedSame
    }
    
    var isPositive: Bool {
        return self.compare(0) == .orderedDescending
    }
    
    var isNotPositive: Bool {
        return self.compare(0) != .orderedDescending
    }
    
    var isNegative: Bool {
        return self.compare(0) == .orderedAscending
    }
    
    var isNotNegative: Bool {
        return self.compare(0) != .orderedAscending
    }
    
    func isGreaterThan(other: NSNumber) -> Bool {
        return self.compare(other) == .orderedDescending
    }
    
    func isGreaterThanOrEqualTo(other: NSNumber) -> Bool {
        return self.compare(other) != .orderedAscending
    }
    
    func isLessThan(other: NSNumber) -> Bool {
        return self.compare(other) == .orderedAscending
    }
    
    func isLessThanOrEqualTo(other: NSNumber) -> Bool {
        return self.compare(other) != .orderedDescending
    }
}
