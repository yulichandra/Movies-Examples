//
//  HomeCoordinator.swift
//  Home
//
//  Created by Herlian . on 16/09/22.
//

import CoreUI

public final class HomeCoordinator: Coordinator {
    public var childCoordinators: [Coordinator] = []
    public var navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let vc = HomeViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
