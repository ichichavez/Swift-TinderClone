//
//  MatchManager.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-18.
//

import Foundation
@MainActor

class MatchManager: ObservableObject {
    @Published var matchedUser: User?
    
    func checkForMatch(withUser user: User) {
       let didMatch = Bool.random()
        
        if didMatch{
            matchedUser = user
        }
    }
}
