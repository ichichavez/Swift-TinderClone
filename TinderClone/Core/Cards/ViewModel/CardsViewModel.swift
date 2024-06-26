//
//  CardsViewModel.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-11.
//

import Foundation
@MainActor

class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel] ()
    @Published var buttonSwipeAction: SwipeAction?
    
    private let service: CardService
    
    init(service: CardService){
        self.service = service
        Task {await fetchCardModels()}
        
    }
    
    func fetchCardModels() async {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print("DEBUG: Failed to fetch cards with error: \(error )")
        }
    }
    func removeCard(_ card: CardModel){
        Task{
            try await Task.sleep(nanoseconds: 500_0000_000)
            guard let index = cardModels.firstIndex(where: {$0.id == card.id}) else {return}
            cardModels.remove(at: index)
        }

    }
    
}
