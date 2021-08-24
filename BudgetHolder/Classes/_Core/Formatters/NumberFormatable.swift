//
//  NumberFormatable.swift
//  BudgetHolder
//
//  Created by Sergey Kim on 24.08.2021.
//

import Foundation

public protocol NumberFormatable {

    func string(from value: Double) -> String
}
