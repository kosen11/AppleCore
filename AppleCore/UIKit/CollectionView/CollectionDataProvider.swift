//
//  CollectionDataProvider.swift
//  iOSReports
//
//  Created by Ray Pietz on 7/29/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

public class CollectionDataProvider: NSObject, UICollectionViewDataSource {
    
    public let reuseIdentifier: String
    public let data: Array<Any>
    public let sectionSize: Int
    public let movable: Bool
    
    public init(reuseIdentifier: String, data: Array<Any>, sectionSize: Int, movable: Bool = false) {
        self.reuseIdentifier = reuseIdentifier
        self.data = data
        self.sectionSize = sectionSize
        self.movable = movable
    }
    
    public func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return movable
    }
    
    public func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
//        var movedData = data[sourceIndexPath.section].remove(at: sourceIndexPath.row)
//
//        if sourceIndexPath.compare(destinationIndexPath) == .orderedAscending {
//        } else {
//        }
        
        //TODO: move items in data arrays
    }
    
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return Int(ceil(Double(data.count) / Double(sectionSize)))
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let fullSections = data.count / sectionSize
        let lastSectionCount = data.count % sectionSize
        
        return (section == fullSections) ? lastSectionCount : sectionSize
    }
    
    private func dataForIndexPath(_ indexPath: IndexPath) -> Any? {
        let index = indexPath.section * sectionSize + indexPath.row
        return data[index]
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        if let dataObject: DataObject = cell as? DataObject {
            let cellData = dataForIndexPath(indexPath)
            dataObject.setData(data: cellData)
        }
        
        return cell
    }
}
