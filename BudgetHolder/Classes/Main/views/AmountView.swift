//
//  AmountView.swift
//  BudgetHolder
//
//  Created by Sergey Kim on 24.08.2021.
//

import UIKit

final class AmountView: UIView {

    var title: String = ""

    var value: Double = 0 {
        didSet {
            guard let formatter = formatter else {
                return
            }
            label.text = String(format: "%@: %@", title, formatter.string(from: value))
        }
    }

    var formatter: NumberFormatable?

    var font: UIFont = UIFont.systemFont(ofSize: 20, weight: .black) {
        didSet {
            label.font = font
        }
    }

    var insets: UIEdgeInsets = .zero {
        didSet {
            guard !insetsConstraints.isEmpty else { return }

            insetsConstraints.first?.constant = insets.top
            insetsConstraints[1].constant = insets.left
            insetsConstraints[2].constant = -insets.right
            insetsConstraints[3].constant = -insets.bottom
        }
    }

    private let container: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.carrebeanGreen
        view.clipsToBounds   = true
        view.layer.cornerRadius = 10
        return view
    }()

    private let label: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.systemFont(ofSize: 20, weight: .black)
        return view
    }()

    private var insetsConstraints: [NSLayoutConstraint] = []

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
        configureLayout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
        configureLayout()
    }

    private func initialize() {
        addSubview(container)
        container.addSubview(label)
    }

    private func configureLayout() {
        insetsConstraints = container.edgesToSuperview(insets: insets)
        label.edgesToSuperview(insets: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8))
    }
}
