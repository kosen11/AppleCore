//
//  DataPopoverTableVC.swift
//  AppleCore
//
//  Created by Ray Pietz on 8/14/19.
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

import UIKit

open class DataPopoverTableVC: DataTableVC {
    
    private static let CONTENT_SIZE_KEY_PATH = "contentSize"
    private var contentObserverAdded: Bool = false
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.addObserver(self, forKeyPath: DataPopoverTableVC.CONTENT_SIZE_KEY_PATH, options: .new, context: nil)
        contentObserverAdded = true
    }
    
    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if contentObserverAdded {
            tableView.removeObserver(self, forKeyPath: DataPopoverTableVC.CONTENT_SIZE_KEY_PATH)
            contentObserverAdded = false
        }
    }
    
    override open func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if let path = keyPath {
            if path == DataPopoverTableVC.CONTENT_SIZE_KEY_PATH {
                preferredContentSize = tableView.contentSize
            }
        }
    }
}
