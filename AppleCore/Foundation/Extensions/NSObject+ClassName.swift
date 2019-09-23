//
//  NSObject+ClassName.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/17/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension NSObject {
    static func className() -> String {
        return String(describing: self)
    }
    
    func className() -> String {
        return String(describing: type(of: self))
    }
}
