//
//  AppDelegate.swift
//  Mantap
//
//  Created by herlianzhang on 09/16/2022.
//  Copyright (c) 2022 herlianzhang. All rights reserved.
//

import UIKit
import Home

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var coordinator: HomeCoordinator?
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let navController = UINavigationController()
        coordinator = HomeCoordinator(navigationController: navController)
        coordinator?.start()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }
}

