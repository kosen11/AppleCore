//
//  UITextField+Selection.swift
//  AppleCore
//
//  Created by Ray Pietz on 11/7/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

public extension UITextField {
    var selectedRange: NSRange {
        if let selectedRange = selectedTextRange {
            let location = offset(from: beginningOfDocument, to: selectedRange.start)
            let length = offset(from: selectedRange.start, to: selectedRange.end)
            
            return NSRange(location: location, length: length)
        }
        
        return NSRange(location: offset(from: endOfDocument, to: endOfDocument), length: 0)
    }
}
