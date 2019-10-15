//
//  NumberFormatter+Money.swift
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

public extension NumberFormatter {
    
    static let DEFAULT_LOCALE = Locale.current.languageCode ?? "en_US"
    static let DEFAULT_CURRENCY = Locale.current.currencyCode ?? "USD"
    
    static var defaultCurrencyFormatter: NumberFormatter {
        return currencyFormatter(locale: DEFAULT_LOCALE, currency: DEFAULT_CURRENCY)
    }
    
    static func currencyFormatter(locale: String?, currency: String?) -> NumberFormatter {
        let localeValue = locale ?? DEFAULT_LOCALE
        let currencyValue = currency ?? DEFAULT_CURRENCY
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: localeValue)
        formatter.currencyCode = currencyValue
        formatter.minimumIntegerDigits = 1
        //TODO: support 3 fraction digits for dinars
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        formatter.roundingMode = .halfUp
        
        if !formatter.negativeFormat.contains("0)") {
            formatter.negativeFormat = "(\(formatter.negativeFormat!))"
        }
        
        return formatter
    }
    
    private static var _currency: NumberFormatter = defaultCurrencyFormatter
    static var currency: NumberFormatter {
        return _currency
    }
    
    static func updateCurrencyFormatter(locale: String?, currency: String?) {
        _currency = currencyFormatter(locale: locale, currency: currency)
    }
    
    static let percentage: NumberFormatter = {
        var formatter = NumberFormatter()
        formatter.minimumIntegerDigits = 1
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 3
        return formatter
    }()
    
    static let tax: NumberFormatter = {
        var formatter = NumberFormatter()
        formatter.minimumIntegerDigits = 1
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 4
        return formatter
    }()
}
