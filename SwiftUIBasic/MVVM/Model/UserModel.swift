//
//  UserModel.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/15.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
