//
//  NSNumberX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/25/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension NSNumber {
    
    func isZero() -> Bool {
        return self.compare(0) == .orderedSame
    }
    
    func isOne() -> Bool {
        return self.compare(1) == .orderedSame
    }
    
    func isPositive() -> Bool {
        return self.compare(0) == .orderedDescending
    }
    
    func isNotPositive() -> Bool {
        return self.compare(0) != .orderedDescending
    }
    
    func isNegative() -> Bool {
        return self.compare(0) == .orderedAscending
    }
    
    func isNotNegative() -> Bool {
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
