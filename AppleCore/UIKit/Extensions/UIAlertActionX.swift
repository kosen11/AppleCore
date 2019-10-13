//
//  UIAlertActionX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/12/19.
//  Copyright © 2019 talech Inc.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, version 3.
//
//  This program is distributed in the hope that it will be useful, but
//  WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
//  General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program. If not, see <http://www.gnu.org/licenses/>.
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
