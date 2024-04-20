//
//  CardStackView.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-10.
//

import SwiftUI

struct CardStackView: View {
    @EnvironmentObject var matchManager : MatchManager
    @State private var showMatchView = false
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack(spacing: 16) {
                    ZStack {
                        ForEach(viewModel.cardModels) { card in
                            CardView(viewModel: viewModel, model: card)
                        }
                    }
                    
                    if !viewModel.cardModels.isEmpty{
                        SwipeActionButtonsView(viewModel: viewModel)
                    }
                    
                }
                .animation(.easeInOut, value: showMatchView)
                .blur(radius: showMatchView ? 20 : 0)
                
                if showMatchView{
                    UserMatchview(show: $showMatchView)
                }
                
                
                
            }
            .onReceive(matchManager.$matchedUser) { user in
                showMatchView = user != nil
            }
            
            .navigationBarItems(leading:
                    Image("marvellogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 88)
        )
            
        }
    }
}

struct CardStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardStackView()
            .environmentObject(MatchManager())
    }
}
