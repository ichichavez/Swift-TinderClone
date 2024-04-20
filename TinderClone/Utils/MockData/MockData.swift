//
//  MockData.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-11.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(id: NSUUID().uuidString,
              fullname: "Conor McGregor",
              age: 37,
              profileImageURLs: [ "conor1", "conor2", "conor3"]
             ),
        
        .init(id: NSUUID().uuidString,
              fullname: "David Beckham",
              age: 37,
              profileImageURLs: [ "davidbeckham1", "davidbeckham2", "davidbeckham3"]
             ),
        
        .init(id: NSUUID().uuidString,
              fullname: "Dua Lipa",
              age: 37,
              profileImageURLs: [ "dua1", "dua2", "dua3"])
    ]
}
