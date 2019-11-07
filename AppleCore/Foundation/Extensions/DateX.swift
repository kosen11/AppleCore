//
//  DateX.swift
//  AppleCore
//
//  Created by Ray Pietz on 6/25/19.
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
    
    //TODO: move localization out and just return Weekday
    var dayOfWeek: String {
        get {
            let weekday: Weekday = Weekday(rawValue: NSCalendar.current.component(.weekday, from: self)) ?? .sunday
            switch weekday {
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
    
    var timeElapsedShort: String {
        return timeElapsedShort(toDate: Date())
    }
    
    func timeElapsedShort(toDate: Date) -> String {
        var secondsDiff = toDate.timeIntervalSince1970 - timeIntervalSince1970
        if secondsDiff == 0 {
            return "Now"
        }
        
        let daysDiff = Int(secondsDiff / TimeInterval.day)
        secondsDiff -= Double(daysDiff) * TimeInterval.day
        let hoursDiff = Int(secondsDiff / TimeInterval.hour)
        secondsDiff -= Double(hoursDiff) * TimeInterval.hour
        let minutesDiff = Int(secondsDiff / TimeInterval.minute)
        
        let daysText = "\(daysDiff)d"
        let hoursText = "\(hoursDiff)h"
        let minutesText = "\(minutesDiff)m"
        return [daysText, hoursText, minutesText].joined(separator: " ").trimmed
    }
    
    var timeElapsed: String {
        return timeElapsed(toDate: Date())
    }
    
    func timeElapsed(toDate: Date) -> String {
        var secondsDiff = toDate.timeIntervalSince1970 - timeIntervalSince1970
        if secondsDiff == 0 {
            return "Now"
        }
        
        let daysDiff = Int(secondsDiff / TimeInterval.day)
        secondsDiff -= Double(daysDiff) * TimeInterval.day
        let hoursDiff = Int(secondsDiff / TimeInterval.hour)
        secondsDiff -= Double(hoursDiff) * TimeInterval.hour
        let minutesDiff = Int(secondsDiff / TimeInterval.minute)
        
        var daysText = ""
        if daysDiff == 1 {
            daysText = "1 day"
        }
        else if daysDiff > 1 {
            daysText = "\(daysDiff) days"
        }
        
        var hoursText = ""
        if hoursDiff == 1 {
            hoursText = "1 hour"
        }
        else if hoursDiff > 1 {
            hoursText = "\(hoursDiff) hours"
        }
        
        var minutesText = ""
        if minutesDiff == 1 {
            minutesText = "1 minute"
        }
        else if minutesDiff > 1 {
            minutesText = "\(minutesDiff) minutes"
        }
        
        return [daysText, hoursText, minutesText].joined(separator: " ").trimmed
    }
}
