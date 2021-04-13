//
//  ViewController.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/07.
//

import UIKit

class RestaurantViewController: UIViewController {

    static func instantiate() -> RestaurantViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! RestaurantViewController
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

