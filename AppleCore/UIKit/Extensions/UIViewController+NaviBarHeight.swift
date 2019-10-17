//
//  UIViewController+NaviBarHeight.swift
//  AppleCore
//
//  Created by Ray Pietz on 8/6/19.
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

public extension UIViewController {
    var statusBarHeight: CGFloat {
        return prefersStatusBarHidden ? 0 : 20
    }
    
    var navigationBarHeight: CGFloat {
        return navigationController?.navigationBar.frame.height ?? 0
    }
    
    var safeAreaTop: CGFloat {
        return navigationBarHeight + statusBarHeight
    }
}
