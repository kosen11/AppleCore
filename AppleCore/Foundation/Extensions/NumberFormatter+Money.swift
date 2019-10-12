//
//  NumberFormatter+Money.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/25/19.
//  Copyright © 2019 talech Inc. All rights reserved.
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
