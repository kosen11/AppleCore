//
//  Dictionary+Extension.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/6/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension Dictionary {
    func toJsonString() -> String? {
        do {
            let data = try JSONSerialization.data(withJSONObject: self, options: [])
            
            return String(data: data, encoding: .utf8) ?? nil
        } catch {
            print("Failed to convert Dictionary to JSON String!")
        }
        
        return nil
    }
}
