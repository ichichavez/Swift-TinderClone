//
//  TinderCloneApp.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-03-30.
//

import SwiftUI

@main
struct TinderCloneApp: App {
    @StateObject var matchManager = MatchManager()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
