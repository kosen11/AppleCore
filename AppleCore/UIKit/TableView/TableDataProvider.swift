//
//  TableDataProvider.swift
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

public class TableDataProvider: NSObject, UITableViewDataSource {
    
    public let reuseIdentifier: String
    public var data: Array<Array<Any>>?
    public var sectionTitles: Array<String>?
    
    public init(reuseIdentifier: String, data: Array<Array<Any>>?) {
        self.reuseIdentifier = reuseIdentifier
        
        super.init()
        
        self.data = data
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return data?.count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        guard let titles = sectionTitles else {
            return nil
        }
        
        return titles[section]
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?[section].count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        if let dataObject: DataObject = cell as? DataObject {
            let cellData = data?[indexPath.section][indexPath.row]
            dataObject.setData(data: cellData)
        }
        
        return cell
    }
}
