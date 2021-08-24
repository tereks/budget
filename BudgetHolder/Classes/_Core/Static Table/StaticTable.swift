//
//  StaticTable.swift
//  BudgetHolder
//
//  Created by Sergey Kim on 24.08.2021.
//

import UIKit
import AloeStackView

public typealias StaticCell = StackViewCell

public final class StaticTable: AloeStackView {

    override public func configureCell(_ cell: StackViewCell) {
        cell.clipsToBounds = false
    }

    public static var `default`: StaticTable = {
        let view = StaticTable()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.rowInset = .zero
        view.clipsToBounds = true
        view.hidesSeparatorsByDefault = true
        return view
    }()
}
