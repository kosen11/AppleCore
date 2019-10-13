//
//  UITableVC.swift
//  AppleCore
//
//  Created by Ray Pietz on 8/14/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

open class UITableVC: UITableViewController {
    
    private let CONTENT_SIZE_KEY_PATH = "contentSize"
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.addObserver(self, forKeyPath: CONTENT_SIZE_KEY_PATH, options: .new, context: nil)
    }
    
    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tableView.removeObserver(self, forKeyPath: CONTENT_SIZE_KEY_PATH)
    }
    
    override open func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if let path = keyPath {
            if path == CONTENT_SIZE_KEY_PATH {
                preferredContentSize = tableView.contentSize
            }
        }
    }
}
