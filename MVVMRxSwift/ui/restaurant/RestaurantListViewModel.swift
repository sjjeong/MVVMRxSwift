//
//  RestaurantListViewModel.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/13.
//

import Foundation
import RxSwift

final class RestaurantListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        return restaurantService.fetchRestaurants()
            .map {
                $0.map {
                    RestaurantViewModel(restaurant: $0)
                }
            }
    }
    
}
