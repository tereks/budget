//
//  MainInteractor.swift
//  BudgetHolder
//
//  Created Sergey Kim on 24.08.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class MainInteractor {

    enum Constants {

        static let insets = UIEdgeInsets(top: 7, left: 20, bottom: 7, right: 20)
    }

    // MARK: - Dependencies

    struct Dependencies {
        let presenter: MainPresenter
        let expencesFormatter: ExpencesFormatter
    }
    private var dip: Dependencies

    private lazy var totalView: AmountView = {
        let view = AmountView()
        view.title     = Localized.total()
        view.formatter = self.dip.expencesFormatter
        view.insets    = Constants.insets
        return view
    }()
    private lazy var expencesView: AmountView = {
        let view = AmountView()
        view.title     = Localized.expences()
        view.formatter = self.dip.expencesFormatter
        view.insets    = Constants.insets
        return view
    }()
    private lazy var incomeView: AmountView = {
        let view = AmountView()
        view.title     = Localized.income()
        view.formatter = self.dip.expencesFormatter
        view.insets    = Constants.insets
        return view
    }()

    // MARK: - Life cycle

    init(dependencies: Dependencies) {
        self.dip = dependencies
    }

    func viewDidLoad() {
        dip.presenter.onViewDidLoad()

        let rows = createRows()
        dip.presenter.addRows(rows)

        reconfigureBalances()
    }

    private func createRows() -> [UIView] {
        return [totalView, expencesView, incomeView]
    }

    private func reconfigureBalances() {
        totalView.value = 0
        expencesView.value = 0
        incomeView.value = 0
    }
}
