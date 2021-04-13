//
//  BaseViewController.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/14.
//

import UIKit
import RxSwift

class BaseMvvmViewController<VM>: UIViewController {
    let disposeBag: DisposeBag = DisposeBag()
    var viewModel: VM!
}
