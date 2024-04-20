//
//  UserProfileView.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-14.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismis
    @State private var currentImageIndex = 0
    
    let user: User
    
    var body: some View {
        VStack{
            HStack{
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                
                Button{
                    dismis()
                    
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        
                    
                }
            }
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ZStack(alignment: .top){
                        Image(user.profileImageURLs[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                            .overlay {
                                ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: user.profileImageURLs.count)
                            }
                        CardImageIndicatorView(currentImageIndex: currentImageIndex,                            imageCount: user.profileImageURLs.count)
                        
                    }
                    VStack(alignment: .leading, spacing: 20){
                        Text("About me")
                            .fontWeight(.semibold)
                        
                        Text("Some test bio for now...")
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                VStack(alignment: .leading, spacing: 12){
                    Text("Essentials")
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "person")
                        
                        Text("Woman")
                        
                        Spacer()
                    }
                    .font(.subheadline)
                    
                    HStack {
                        Image(systemName: "arrow.down.forward.and.arrow.up.backward.circle")
                        
                        Text("Straight")
                        
                        Spacer()
                    }
                    .font(.subheadline)
                    
                    
                    HStack {
                        Image(systemName: "book")
                        
                        Text("Actrees")
                        
                        Spacer()
                    }
                    
                    
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(user: MockData.users[0])
    }
}
