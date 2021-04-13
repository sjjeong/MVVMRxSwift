//
//  AppContainer.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/13.
//

import UIKit

class AppContainer {
    
    static let instance: AppContainer = AppContainer()
    
    private lazy var restaurantService: RestaurantServiceProtocol = RestaurantService()
    
    private var restaurantListViewModel: RestaurantListViewModel {
        return RestaurantListViewModel(restaurantService: self.restaurantService)
    }
    
    var restaurantListViewController: RestaurantListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! RestaurantListViewController
        viewController.viewModel = self.restaurantListViewModel
        return viewController
    }
    
    private init() { }
    
}
