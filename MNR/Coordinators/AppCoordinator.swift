//
//  AppCoordinator.swift
//  MNR
//
//  Created by Софья Норина on 3.11.2023.
//

import UIKit

class AppCoordinator {
    
    var window: UIWindow?
    
    init(window: UIWindow? = nil) {
        self.window = window
    }
    
    func start() {
        let childCoordinator = ChildCoordinator()
        window?.rootViewController = childCoordinator.navigationController
        childCoordinator.start()
    }
}
