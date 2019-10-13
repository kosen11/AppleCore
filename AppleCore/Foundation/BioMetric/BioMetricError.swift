//
//  BioMetricError.swift
//  iOSReports
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
