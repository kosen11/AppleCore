//
//  BioMetricError.swift
//  iOSReports
//
//  Created by Ray Pietz on 7/9/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public enum BioMetricError: Error {
    case failed
    case notSet
    case unsupported
}

extension BioMetricError : LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .failed:
            return "Bio-metric authorization failed"
        case .notSet:
            return "Bio-metric ID not set"
        case .unsupported:
            return "Bio-metric ID unsupported"
        }
    }
}
