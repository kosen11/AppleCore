//
//  DataObject.swift
//  iOSReports
//
//  Created by Ray Pietz on 7/8/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public protocol DataObject {
    func data() -> Any?
    func setData(data: Any?)
}

public class DataObjectSet {
    public static func data(target: Any?, data: Any?) {
        if let dataObject: DataObject = target as? DataObject {
            dataObject.setData(data: data)
        }
    }
}
