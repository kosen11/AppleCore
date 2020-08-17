//
//  String+Append.swift
//  AppleCore
//
//  Created by Ray Pietz on 7/4/19.
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

public extension String {
    mutating func appendCSV(_ value: String) {
        appendCSV(value, addSpace: false)
    }
    
    mutating func appendCSSV(_ value: String) {
        appendCSV(value, addSpace: true)
    }
    
    mutating func appendCSV(_ value: String, addSpace: Bool) {
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
