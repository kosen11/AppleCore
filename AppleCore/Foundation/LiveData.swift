//
//  LiveData.swift
//  AppleCore
//
//  Created by Ray Pietz on 8/16/20.
//  Copyright © 2020 talech Inc. All rights reserved.
//

import Foundation

public class LiveData<T> {
    
    public init(_ startValue: T, name: String) {
        _value = startValue
        _name = name
        notify()
    }
    
    private var _name: String
    private var _value: T
    public var value: T {
        get { return _value }
        set {
            _value = newValue
            notify()
        }
    }
    
    public func addObserver(observer: Any, selector: Selector, object: Any?) {
        NotificationCenter.default.addObserver(observer,
                                               selector: selector,
                                               name: NSNotification.Name(rawValue: _name),
                                               object: object)
    }
    
    private func notify() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: _name),
                                        object: _value,
                                        userInfo: nil)
    }
}
