//
//  MainCoordinator.swift
//  Movies
//
//  Created by Herlian . on 16/09/22.
//

import CoreUI
import Home

final class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let home = HomeCoordinator(navigationController: navigationController)
        childCoordinators.append(home)
        home.start()
    }
}
