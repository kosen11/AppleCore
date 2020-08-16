//
//  UIAlertControllerX.swift
//  AppleCore
//
//  Created by Ray Pietz on 6/12/19.
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
import UIKit

public extension UIAlertController {
    
    static let UIAlertActionOKCancel = UIAlertAction.init(title: "OK", style: UIAlertAction.Style.cancel)
    
    static func showAlert(title: String? = nil, message: String? = nil, animated: Bool = true) {
        showAlert(title: title, message: message, animated: animated, actions: UIAlertActionOKCancel)
    }
    
    static func showAlert(title: String? = nil, message: String? = nil, actions: UIAlertAction?...) {
        let alert: UIAlertController = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        alert.addActions(actions: actions as? [UIAlertAction])
        presentAlertController(alertController: alert, animated: true)
    }
    
    static func showAlert(title: String? = nil, message: String? = nil, animated: Bool = true, actions: UIAlertAction?...) {
        let alert: UIAlertController = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        alert.addActions(actions: actions as? [UIAlertAction])
        presentAlertController(alertController: alert, animated: animated)
    }
    
    static func presentAlertController(alertController: UIAlertController!, animated: Bool = true) {
        print("ALERT! title: \(String(describing: alertController.title)) message: \(String(describing: alertController.message))")
        DispatchQueue.main.async {
            presentWindow()?.rootViewController?.present(alertController, animated: animated, completion: nil)
        }
    }
    
    static func presentWindow() -> UIWindow? {
        return UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
    }
    
    func addActions(actions: [UIAlertAction]?) {
        for action in actions ?? [] {
            addAction(action)
        }
    }
}

