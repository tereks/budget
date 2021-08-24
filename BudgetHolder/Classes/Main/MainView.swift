//
//  MainView.swift
//  BudgetHolder
//
//  Created Sergey Kim on 24.08.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol MainView: AnyObject {

    var interactor: MainInteractor! { get set }

    func initialConfigure()

    func addRows(_ rows: [UIView])
}
