//
//  UIAlertActionX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/12/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation
import UIKit

public extension UIAlertAction {
    convenience init(title: String?) {
        self.init(title: title, style: UIAlertAction.Style.default, handler: nil)
    }
    
    convenience init(title: String?, style: UIAlertAction.Style) {
        self.init(title: title, style: style, handler: nil)
    }
}
