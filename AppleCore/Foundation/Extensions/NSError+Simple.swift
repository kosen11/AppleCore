//
//  NSError+Simple.swift
//  Reports
//
//  Created by Ray Pietz on 6/21/19.
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

public extension NSError {
    
    private static let DEFAULT_DOMAIN = Bundle.main.bundleIdentifier ?? ""
    
    static func simpleError(message: String) -> NSError {
        return NSError.simpleError(domain: DEFAULT_DOMAIN, code: -1, message: message)
    }
    
    static func simpleError(code: Int, message: String) -> NSError {
        return NSError.simpleError(domain: DEFAULT_DOMAIN, code: code, message: message)
    }
    
    static func simpleError(domain: String, code: Int, message: String) -> NSError {
        return NSError(domain: domain,
                       code: code,
                       userInfo: [
                        NSLocalizedDescriptionKey: message,
                        NSLocalizedFailureReasonErrorKey: message
            ])
    }
}
