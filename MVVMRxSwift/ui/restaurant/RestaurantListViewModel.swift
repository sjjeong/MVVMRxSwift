//
//  RestaurantListViewModel.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/13.
//

import Foundation
import RxSwift
import RxRelay

final class RestaurantListViewModel: BaseViewModel {
    private let restaurantService: RestaurantServiceProtocol

    let title: BehaviorRelay<String> = .init(value: "Restaurants")
    let restaurantList: BehaviorRelay<[Restaurant]> = .init(value: [])

    init(restaurantService: RestaurantServiceProtocol) {
        self.restaurantService = restaurantService
    }

    override func start() {
        restaurantService.fetchRestaurants()
            .bind(to: restaurantList)
            .disposed(by: disposeBag)
    }

}
