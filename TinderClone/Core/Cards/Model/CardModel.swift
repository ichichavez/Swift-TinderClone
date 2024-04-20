//
//  CardModel.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-11.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String {return user.id}
}
