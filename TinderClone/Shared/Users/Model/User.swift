//
//  User.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-10.
//

import Foundation

struct User: Identifiable, Hashable{
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
