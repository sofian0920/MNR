//
//  ChildCoordinator .swift
//  MNR
//
//  Created by Софья Норина on 3.11.2023.
//

import UIKit

protocol IChildCoordinator {
    func start()
}

class ChildCoordinator: IChildCoordinator {
    
    var navigationController = UINavigationController()
    
    func start() {
        let productsVC = ProductsViewController()
        navigationController.pushViewController(productsVC, animated: true)
    }
}

