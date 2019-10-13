//
//  BioMetricId.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/14/19.
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
import LocalAuthentication

public class BioMetricId: NSObject {
    public static func check(callback: @escaping ResultCallback<Bool, BioMetricError>) {
        print("checking bio metric login")
        
        let context = LAContext()
        let reasonString = "Account authorization"
        
        var authError: NSError?
        if #available(iOS 8.0, macOS 10.12.1, *) {
            if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &authError) {
                print("bio metric enabled")
                context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reasonString) { success, evaluateError in
                    if success {
                        print("bio metric success")
                        callback(.success(true))
                    } else {
                        let message = evaluateError?.localizedDescription ?? ""
                        print("bio metric failed: \(message)")
                        callback(.failure(.failed))
                    }
                }
            } else {
                let message = authError?.localizedDescription ?? ""
                print("bio metric not set: \(message)")
                callback(.failure(.notSet))
            }
        } else {
            print("bio metric unsupported")
            callback(.failure(.unsupported))
        }
    }
}
