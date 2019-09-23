//
//  DateX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/25/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

public extension Date {
    
    static var yesterday: Date {
        return Date().dayBefore
    }
    
    static var tomorrow: Date {
        return Date().dayAfter
    }
    
    static func dayBefore(date: Date) -> Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: date)!
    }
    
    static func dayAfter(date: Date) -> Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: date)!
    }
    
    var dayBefore: Date {
        return Date.dayBefore(date: self)
    }
    
    var dayAfter: Date {
        return Date.dayAfter(date: self)
    }
    
    var midnight: Date {
        return Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: self)!
    }
    
    var noon: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    
    var eod: Date {
        //TODO: push to last nano second of day
        return Calendar.current.date(bySettingHour: 23, minute: 59, second: 59, of: self)!
    }
    
    var year: Int {
        return Calendar.current.component(.year, from: self)
    }
    
    var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    
    var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    
    var hour: Int {
        return Calendar.current.component(.hour, from: self)
    }
    
    var isLastDayOfMonth: Bool {
        return dayAfter.month != month
    }
}
