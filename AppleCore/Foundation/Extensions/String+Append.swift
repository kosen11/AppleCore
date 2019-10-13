//
//  String+Append.swift
//  iOSReports
//
//  Created by Ray Pietz on 7/4/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension String {
    mutating func appendCSV(value: String) {
        appendCSV(value: value, addSpace: false)
    }
    
    mutating func appendCSSV(value: String) {
        appendCSV(value: value, addSpace: true)
    }
    
    mutating func appendCSV(value: String, addSpace: Bool) {
        if count > 0 {
            if addSpace {
                append(", ")
            }
            else {
                append(",")
            }
        }
        append(value)
    }
}
