//
//  NSError+Simple.swift
//  Reports
//
//  Created by Ray Pietz on 6/21/19.
//  Copyright © 2019 talech Inc. All rights reserved.
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
