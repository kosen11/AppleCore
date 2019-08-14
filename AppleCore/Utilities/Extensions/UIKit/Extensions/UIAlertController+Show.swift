//
//  UIAlertControllerX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/12/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation
import UIKit

public extension UIAlertController {
    static let UIAlertActionOKCancel = UIAlertAction.init(title: "OK", style: UIAlertAction.Style.cancel)
    
    static func showAlert(title: String?) {
        showAlert(title: title, message: nil, actions: UIAlertActionOKCancel)
    }
    
    static func showAlert(title: String?, message: String?) {
        showAlert(title: title, message: message, actions: UIAlertActionOKCancel)
    }
    
    static func showAlert(title: String?, message: String?, animated: Bool) {
        showAlert(title: title, message: message, animated: animated, actions: UIAlertActionOKCancel)
    }
    
    static func showAlert(title: String? = nil, message: String? = nil, actions: UIAlertAction?...) {
        let alert: UIAlertController = UIAlertController.init(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addActions(actions: actions as? [UIAlertAction])
        presentAlertController(alertController: alert, animated: true)
    }
    
    static func showAlert(title: String? = nil, message: String? = nil, animated: Bool, actions: UIAlertAction?...) {
        let alert: UIAlertController = UIAlertController.init(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addActions(actions: actions as? [UIAlertAction])
        presentAlertController(alertController: alert, animated: animated)
    }
    
    static func presentAlertController(alertController: UIAlertController!, animated: Bool) {
        print("ALERT! title: \(String(describing: alertController.title)) message: \(String(describing: alertController.message))")
        DispatchQueue.main.async {
            UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: animated, completion: nil)
        }
    }
    
    func addActions(actions: [UIAlertAction]?) {
        for action in actions ?? [] {
            addAction(action)
        }
    }
}

