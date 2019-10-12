//
//  DateX.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/25/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import Foundation

enum Weekday : Int {
    case sunday = 0
    case monday = 1
    case tuesday = 2
    case wednesday = 3
    case thursday = 4
    case friday = 5
    case saturday = 6
}

public extension Date {
    
    var dateShort: String {
        return DateFormatter.localizedString(from: self, dateStyle: .short, timeStyle: .none)
    }
    
    var dateMedium: String {
        return DateFormatter.localizedString(from: self, dateStyle: .medium, timeStyle: .none)
    }
    
    var dateLong: String {
        return DateFormatter.localizedString(from: self, dateStyle: .long, timeStyle: .none)
    }
    
    var timeShort: String {
        return DateFormatter.localizedString(from: self, dateStyle: .none, timeStyle: .short)
    }
    
    var timeMedium: String {
        return DateFormatter.localizedString(from: self, dateStyle: .none, timeStyle: .medium)
    }
    
    var timeLong: String {
        return DateFormatter.localizedString(from: self, dateStyle: .none, timeStyle: .long)
    }
    
    var dayOfWeek: String {
        get {
            let weekday: Weekday = Weekday(rawValue: NSCalendar.current.component(.weekday, from: self)) ?? .sunday
            switch(weekday) {
            case .sunday:
                return "Sunday"
            case .monday:
                return "Monday"
            case .tuesday:
                return "Tuesday"
            case .wednesday:
                return "Wednesday"
            case .thursday:
                return "Thursday"
            case .friday:
                return "Friday"
            case .saturday:
                return "Saturday"
            }
        }
        
    }
    
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
