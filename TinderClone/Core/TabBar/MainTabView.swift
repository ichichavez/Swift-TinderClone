//
//  MainTabBar.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-03-30.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            CardStackView()
                .tabItem {Image(systemName: "flame")}
                .tag(0)
            
            Text("Search View")
                .tabItem {Image(systemName: "magnifyingglass")}
                .tag(1)
            
            Text("Inbox View")
                .tabItem {Image(systemName: "ellipsis.bubble")}
                .tag(2)
            
            CurrentUserProfileView(user: MockData.users[1])
                .tabItem {Image(systemName: "person")}
                .tag(3)
            
            
        }
        .tint(.primary)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(MatchManager())
    }
}
