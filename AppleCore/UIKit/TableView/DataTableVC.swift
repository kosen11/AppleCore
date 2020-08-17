//
//  DataTableVC.swift
//  AppleCore
//
//  Created by Ray Pietz on 10/17/19.
//

import UIKit

open class DataTableVC: UITableViewController, DataObject {

    private var _data: Any?
    
    public func data() -> Any? {
        return _data
    }
    
    public func setData(_ data: Any?) {
        _data = data
        DispatchQueue.main.async {
            self.updateDataView()
        }
    }
    
    open func updateDataView() {
        //TODO: override in child implementation
    }
}
