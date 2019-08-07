//
//  UIViewController+NaviBarHeight.swift
//  AppleCore
//
//  Created by Ray Pietz on 8/6/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension UIViewController {
    func navigationBarHeight() -> CGFloat {
        return navigationController?.navigationBar.frame.height ?? 0
    }
}
