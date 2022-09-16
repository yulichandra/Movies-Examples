//
//  AppDelegate.swift
//  Movies
//
//  Created by Yuli Chandra on 07/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var coordinator: MainCoordinator?
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
#if DEBUG
    print("This is the STDevelopment scheme, using Development configuration with Development.xcconfig")
  #endif
        
  #if RELEASE
    print("This is the STProduction scheme, using Production configuration with Production.xcconfig")
  #endif
        print(Bundle.main.bundleIdentifier)
        
        let navController = UINavigationController()
        coordinator = MainCoordinator(navigationController: navController)
        coordinator?.start()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }
}

