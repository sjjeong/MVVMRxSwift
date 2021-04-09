//
//  Restaurant.swift
//  MVVMRxSwift
//
//  Created by SeokJun Jeong on 2021/04/07.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String, Decodable {
    case european
    case indian
    case mexican
    case french
    case english
}
