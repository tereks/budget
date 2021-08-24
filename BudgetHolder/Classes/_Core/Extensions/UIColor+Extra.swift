//
//  UIColor+Extra.swift
//  BudgetHolder
//
//  Created by Sergey Kim on 24.08.2021.
//

import UIKit

public extension UIColor {

    convenience init(rgb: Int, alpha: CGFloat = 1) {
        self.init(
            r: CGFloat((rgb >> 16) & 0xFF),
            g: CGFloat((rgb >> 8) & 0xFF),
            b: CGFloat(rgb & 0xFF),
            alpha: alpha
        )
    }

    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat = 1) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: alpha)
    }

    @nonobjc class var carrebeanGreen: UIColor {
        return UIColor(rgb: 0x00C49A)
    }
}
