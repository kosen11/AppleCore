//
//  TimeIntervalX.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/10/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

public extension TimeInterval {
    static func second() -> Double {
        return 1
    }
    
    static func minute() -> Double {
        return 60
    }
    
    static func hour() -> Double {
        return 3600
    }
    
    static func day() -> Double {
        return 86400
    }
    
    static func days(count: Int) -> Double {
        return day() * Double(count)
    }
    
    static func week() -> Double {
        return 604800
    }
    
    static func year() -> Double {
        return 31536000
    }
}
