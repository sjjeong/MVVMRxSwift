//
//  AppCoordinator.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/13.
//

import UIKit


class AppCoordinator {

    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let viewController = AppContainer.instance.restaurantListViewController
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
