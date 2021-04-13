//
//  ViewController.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/07.
//

import UIKit
import RxSwift
import RxCocoa

class RestaurantViewController: UIViewController {
    
    private let disposeBag: DisposeBag = .init()
    private var viewModel: RestaurantListViewModel!
    @IBOutlet weak var restaurantTableView: UITableView!
    
    static func instantiate(viewModel: RestaurantListViewModel) -> RestaurantViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! RestaurantViewController
        viewController.viewModel = viewModel
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
        
        restaurantTableView.tableFooterView = UIView()
        restaurantTableView.contentInsetAdjustmentBehavior = .never
        
        viewModel.fetchRestaurantViewModels()
            .observe(on: MainScheduler.instance)
            .bind(to: restaurantTableView.rx.items(cellIdentifier: "cell")) {
                index, viewModel, cell in
                cell.textLabel?.text = viewModel.displayText
            }.disposed(by: disposeBag)
    }


}

