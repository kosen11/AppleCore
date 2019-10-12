//
//  TimeIntervalX.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/10/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

public extension TimeInterval {
    static var second: Double {
        return 1
    }
    
    static var minute: Double {
        return 60
    }
    
    static var hour: Double {
        return 3600
    }
    
    static var day: Double {
        return 86400
    }
    
    static func days(count: Int) -> Double {
        return day * Double(count)
    }
    
    static var week: Double {
        return 604800
    }
    
    static var year: Double {
        return 31536000
    }
}
