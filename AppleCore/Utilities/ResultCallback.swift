//
//  ResultCallback.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/18/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

public typealias ResultCallback<T, E: Error> = (Result<T?, E>) -> Void
