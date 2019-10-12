//
//  String+JSON.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/6/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension String {
    var jsonDictionary: Dictionary<String, Any>? {
        let metaData = data(using: .utf8)
        if let data = metaData {
            do {
                if let metaJson = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    return metaJson
                }
            } catch {
                print("Failed to convert String to JSON Dictonary!")
            }
        }
        
        return nil
    }
}
