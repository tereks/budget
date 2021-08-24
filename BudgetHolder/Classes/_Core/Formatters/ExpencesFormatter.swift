//
//  ExpencesFormatter.swift
//  BudgetHolder
//
//  Created by Sergey Kim on 24.08.2021.
//

import Foundation

final class ExpencesFormatter: NumberFormatable {

    private let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = " "
        formatter.maximumFractionDigits = 2
        return formatter
    }()

    func string(from value: Double) -> String {
        let intValue = abs(value)
        var result: String

        switch intValue {
        case 1_000_000_000...:
            var formatted = intValue / 1_000_000_000
            formatted = formatted.reduceScale(to: 1)
            result = "\(formatted)B"
        case 1_000_000...:
            var formatted = intValue / 1_000_000
            formatted = formatted.reduceScale(to: 1)
            result = "\(formatted)M"
        case 1_000...:
            var formatted = intValue / 1_000
            formatted = formatted.reduceScale(to: 1)
            result = "\(formatted)K"
        default:
            result = numberFormatter.string(from: value as NSNumber) ?? "\(value)M"
        }

        return result + " ₽"
    }
}

extension Double {

    func reduceScale(to places: Int) -> Double {
        let multiplier = pow(10, Double(places))
        let newDecimal = multiplier * self // move the decimal right
        let truncated = Double(Int(newDecimal)) // drop the fraction
        let originalDecimal = truncated / multiplier // move the decimal back
        return originalDecimal
    }
}

