//
//  Coordinator.swift
//  CoreUI
//
//  Created by Herlian . on 16/09/22.
//

import UIKit

public protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
