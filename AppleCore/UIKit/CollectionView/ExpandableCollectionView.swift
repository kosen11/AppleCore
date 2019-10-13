//
//  ExpandableCollectionView.swift
//  AppleCore
//
//  Created by Ray Pietz on 9/23/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

open class ExpandableCollectionView: UICollectionView {
    
    private var expandedCell: ExpandableCell?
    private var hiddenCells = Array<ExpandableCell>()

    public func toggleCellExpand(indexPath: IndexPath, animationCompleteCallback: Callback<Bool>?) {
        let dampingRatio: CGFloat = 0.8
        let initialVelocity = CGVector.zero
        let springParameters = UISpringTimingParameters(dampingRatio: dampingRatio, initialVelocity: initialVelocity)
        let animator = UIViewPropertyAnimator(duration: 0.5, timingParameters: springParameters)
        let isShow: Bool
        
        isUserInteractionEnabled = false
        
        if let selectedCell = expandedCell {
            isShow = false
            
            animator.addAnimations {
                selectedCell.collapse()
                
                for cell in self.hiddenCells {
                    cell.show()
                }
            }
            
            animator.addCompletion { _ in
                self.isScrollEnabled = true
                self.expandedCell = nil
                self.hiddenCells.removeAll()
            }
        } else {
            isShow = true
            
            isScrollEnabled = false
            
            let selectedCell = cellForItem(at: indexPath)! as! ExpandableCell
            let frameOfSelectedCell = selectedCell.frame
            
            expandedCell = selectedCell
            hiddenCells = visibleCells.map { $0 as! ExpandableCell }.filter { $0 != selectedCell }
            
            animator.addAnimations {
                selectedCell.expand(in: self)

                for cell in self.hiddenCells {
                    cell.hide(in: self, frameOfSelectedCell: frameOfSelectedCell)
                }
            }
        }
        
        animator.addCompletion { _ in
            self.isUserInteractionEnabled = true
            animationCompleteCallback?(isShow)
        }
        
        animator.startAnimation()
    }

}
