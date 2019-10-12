//
//  NSNumberX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/25/19.
//  Copyright © 2019 talech Inc. All rights reserved.
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
