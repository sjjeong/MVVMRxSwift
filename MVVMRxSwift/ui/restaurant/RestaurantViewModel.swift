//
// Created by SeokJun Jeong on 2021/04/10.
//

import Foundation

struct RestaurantViewModel {
    
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }

    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
