//
//  CardService.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-11.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel]{
        let users = MockData.users
        return users.map({CardModel(user: $0 )})
    }
}
