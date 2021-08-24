//
//  MainConfigurator.swift
//  BudgetHolder
//
//  Created Sergey Kim on 24.08.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class MainConfigurator {

    class func createWithNVC() -> UINavigationController {
        let nvc = UINavigationController(rootViewController: create())
        return nvc
    }
    
    class func create() -> MainVC {
        let viewController = MainVC()

        let presenter = MainPresenter(view: viewController)
        
        let interactor = createInteractor(presenter: presenter)
        viewController.interactor = interactor

        return viewController
    }

    private class func createInteractor(presenter: MainPresenter) -> MainInteractor {
        let dependencies = MainInteractor.Dependencies(presenter: presenter, expencesFormatter: resolve())
        return MainInteractor(dependencies: dependencies)
    }
}
