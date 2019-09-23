//
//  BioMetricId.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/14/19.
//  Copyright © 2019 talech Inc. All rights reserved.
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
                    DispatchQueue.main.async {
                        if success {
                            print("bio metric success")
                            callback(.success(true))
                        } else {
                            print("bio metric failed")
                            callback(.failure(BioMetricError.failed))
                        }
                    }
                }
            } else {
                let message = authError?.localizedDescription ?? ""
                print("bio metric not set: \(message)")
                callback(.failure(BioMetricError.notSet))
            }
        } else {
            print("bio metric unsupported")
            callback(.failure(BioMetricError.unsupported))
        }
    }
}
