//
//  BaseViewModel.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/14.
//

import Foundation
import RxSwift

class BaseViewModel {
    let disposeBag: DisposeBag = DisposeBag()

    func start() {
        // no-op
    }
}
