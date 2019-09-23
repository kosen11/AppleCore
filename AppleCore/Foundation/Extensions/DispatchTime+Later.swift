//
//  DispatchTime+Later.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/21/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension DispatchTime {
    static func later(seconds: Double) -> DispatchTime {
        return .now() + seconds
    }
}
