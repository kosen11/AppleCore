//
//  UIDeviceX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/12/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation
import UIKit

public extension UIDevice {
    func vendorId() -> String? {
        return identifierForVendor?.uuidString
    }
}

