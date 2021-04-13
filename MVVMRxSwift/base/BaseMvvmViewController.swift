//
//  BaseViewController.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/14.
//

import UIKit
import RxSwift

class BaseMvvmViewController<VM: BaseViewModel>: UIViewController {
    let disposeBag: DisposeBag = DisposeBag()
    var viewModel: VM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.start()
    }
}
