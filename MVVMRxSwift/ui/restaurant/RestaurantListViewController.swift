//
//  ViewController.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/07.
//

import UIKit
import RxSwift
import RxCocoa

class RestaurantListViewController: BaseMvvmViewController<RestaurantListViewModel> {

    @IBOutlet weak var restaurantTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        restaurantTableView.tableFooterView = UIView()
        restaurantTableView.contentInsetAdjustmentBehavior = .never
        
        viewModel.title
            .asDriver()
            .drive(navigationItem.rx.title)
            .disposed(by: disposeBag)
        
        viewModel.restaurantList
            .asDriver()
            .drive(restaurantTableView.rx.items(cellIdentifier: "cell")) { index, item, cell in
                cell.textLabel?.text = item.displayText
            }
            .disposed(by: disposeBag)
    }


}

