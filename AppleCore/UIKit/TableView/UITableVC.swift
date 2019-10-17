//
//  UITableVC.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/17/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

open class UITableVC: UITableViewController, DataObject {

    private var _data: Any?
    
    public func data() -> Any? {
        return _data
    }
    
    public func setData(data: Any?) {
        _data = data
        updateData()
    }
    
    open func updateData() {
        //TODO: override in child implementation
    }
}
