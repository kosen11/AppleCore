//
//  TimeIntervalX.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/10/19.
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
