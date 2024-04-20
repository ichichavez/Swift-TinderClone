//
//  SwipeActionButtonsView.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-14.
//

import SwiftUI

struct SwipeActionButtonsView: View {
    @ObservedObject var viewModel: CardsViewModel
    var body: some View {
        HStack(spacing: 32){
            Button {
                viewModel.buttonSwipeAction = .reject
                
            }label: {
                Image(systemName: "xmark")
                    .fontWeight(.heavy)
                    .foregroundStyle(.red)
                    .background{
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
            }
            .frame(width: 48, height: 48)
            
            Button {
                viewModel.buttonSwipeAction = .like
                
            }label: {
                Image(systemName: "heart.fill")
                    .fontWeight(.heavy)
                    .foregroundStyle(.green)
                    .background{
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
            }
            .frame(width: 48, height: 48)
           
        }
    }
}

struct SwipeActionButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionButtonsView(viewModel: CardsViewModel(service:
           CardService()))
    }
}
