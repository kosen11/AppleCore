//
//  Bundle+Version.swift
//  iOSReports
//
//  Created by Ray Pietz on 7/8/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension Bundle {
    public static let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
}
