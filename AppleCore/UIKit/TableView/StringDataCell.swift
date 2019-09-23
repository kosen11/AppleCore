//
//  StringDataCell.swift
//  AppleCore
//
//  Created by Ray Pietz on 8/14/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

public class StringDataCell: UITableViewCell, DataObject {
    private var title: String?
    
    public func data() -> Any? {
        return title
    }
    
    public func setData(data: Any?) {
        if let text = data as? String {
            title = text
            textLabel?.text = text
        }
    }
}
