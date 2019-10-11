//
//  String+Error.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/11/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

extension String: Error {}
extension String: LocalizedError {
    public var errorDescription: String? { return self }
}
