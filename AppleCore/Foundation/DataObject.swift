//
//  DataObject.swift
//  AppleCore
//
//  Created by Ray Pietz on 7/8/19.
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
