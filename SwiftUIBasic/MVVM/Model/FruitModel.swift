//
//  FruitModel.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/15.
//

import Foundation

struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
