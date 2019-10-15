//
//  Dictionary+Extension.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/6/19.
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

import Foundation

public extension Dictionary {
    var jsonString: String? {
        return toJsonString()
    }
    
    func toJsonString(prettyPrint: Bool = false) -> String? {
        do {
            let options: JSONSerialization.WritingOptions = prettyPrint ? [.prettyPrinted] : []
            let data = try JSONSerialization.data(withJSONObject: self, options: options)
            
            return String(data: data, encoding: .utf8) ?? nil
        } catch {
            print("Failed to convert Dictionary to JSON String!")
        }
        
        return nil
    }
}
