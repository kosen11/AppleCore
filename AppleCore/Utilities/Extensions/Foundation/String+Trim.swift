//
//  StringX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/12/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension String {
    func trimmed() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
}

