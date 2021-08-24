//
//  MainVC.swift
//  BudgetHolder
//
//  Created Sergey Kim on 24.08.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class MainVC: UIViewController, MainView {

    enum Constants {

        static let insets = UIEdgeInsets(top: 10, left: 20, bottom: 20, right: 20)
    }

    // MARK: - Dependencies

    var interactor: MainInteractor!

    // MARK: - Properties

    let tableView = StaticTable.default

    // MARK: - Life cycle

	override func viewDidLoad() {
        super.viewDidLoad()
        interactor.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    func initialConfigure() {
        view.backgroundColor = .white

        view.addSubview(tableView)
        configureLayout()
    }

    private func configureLayout() {
        tableView.edgesToSuperview(usingSafeArea: true)
    }

    func addRows(_ rows: [UIView]) {
        tableView.addRows(rows)
    }
}
