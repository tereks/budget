//
//  AppDelegate.swift
//  BudgetHolder
//
//  Created by Sergey Kim on 24.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let dip = ApplicationDependenceProvider()
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        dip.configure()

        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = MainConfigurator.createWithNVC()
        window!.makeKeyAndVisible()

        return true
    }
}

