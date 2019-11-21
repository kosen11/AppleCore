//
//  ExpandableCell.swift
//  AppleCore
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

open class ExpandableCell: UICollectionViewCell {
    
    private var initialFrame = CGRect.zero
    private var initialCornerRadius: CGFloat = 0.0
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupView()
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }
    
    private func setupView() {
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
        
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = contentView.layer.cornerRadius
    }
    
    public func expand(in collectionView: UICollectionView) {
        initialFrame = self.frame
        initialCornerRadius = self.contentView.layer.cornerRadius
        
        self.contentView.layer.cornerRadius = 0
        self.frame = CGRect(x: 0, y: collectionView.contentOffset.y, width: collectionView.frame.width, height: collectionView.frame.height)
        
        layoutIfNeeded()
    }
    
    public func collapse() {
        self.contentView.layer.cornerRadius = initialCornerRadius
        self.frame = initialFrame
        
        layoutIfNeeded()
    }
    
    public func hide(in collectionView: UICollectionView, frameOfSelectedCell: CGRect) {
        initialFrame = self.frame
        
        let currentY = self.frame.origin.y
        let newY: CGFloat
        
        if currentY < frameOfSelectedCell.origin.y {
            let offset = frameOfSelectedCell.origin.y - currentY
            newY = collectionView.contentOffset.y - offset
        } else if currentY > frameOfSelectedCell.origin.y {
            let offset = currentY - frameOfSelectedCell.maxY
            newY = collectionView.contentOffset.y + collectionView.frame.height + offset
        } else {
            let offset = frameOfSelectedCell.maxX
            newY = collectionView.contentOffset.y + collectionView.frame.height + offset
        }
        
        self.frame.origin.y = newY
        
        layoutIfNeeded()
    }
    
    public func show() {
        self.frame = initialFrame
        
        layoutIfNeeded()
    }
}
