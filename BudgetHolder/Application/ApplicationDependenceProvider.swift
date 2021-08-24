//
//  ApplicationDependenceProvider.swift
//  BudgetHolder
//
//  Created by Sergey Kim on 24.08.2021.
//

import Foundation
import Dip
import TinyConstraints

let container = DependencyContainer(configBlock: configureContainer)

func configureContainer(container rootContainer: DependencyContainer) {
}

func resolve<T>() -> T {
    return try! container.resolve() as T
}

final class ApplicationDependenceProvider {

    func configure() {
        container.register(.shared) { () -> ExpencesFormatter in
            return ExpencesFormatter()
        }
    }
}
