//
//  MainPresenter.swift
//  BudgetHolder
//
//  Created Sergey Kim on 24.08.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class MainPresenter {

    fileprivate(set) weak var view: MainView!

    init(view: MainView) {
        self.view = view
    }
}

extension MainPresenter {

    func onViewDidLoad() {
        view.initialConfigure()
    }

    func addRows(_ rows: [UIView]) {
        view.addRows(rows)
    }
}
