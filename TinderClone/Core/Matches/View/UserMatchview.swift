//
//  UserMatchview.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-18.
//

import SwiftUI

struct UserMatchview: View {
    @Binding var show: Bool
    @EnvironmentObject var matchManager: MatchManager
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()
            
            VStack(spacing: 120){
                VStack{
                    Image("marvellogo")
                        .resizable()
                        .frame(width: 250, height: 100)
                    
                    if let matchedUser = matchManager.matchedUser{
                        Text("You and \(matchedUser.fullname) liked each other.")
                            .foregroundStyle(.white)
                    }
                        
                }
                HStack(spacing: 16){
                    Image(MockData.users[0].profileImageURLs[0])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay{
                            Circle()
                                .stroke(.white, lineWidth: 2)
                                .shadow(radius: 4)
                        }
                        
                    

                    if let matchedUser = matchManager.matchedUser {
                        
                        Image(matchedUser.profileImageURLs[0])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .overlay{
                                Circle()
                                    .stroke(.white, lineWidth: 2)
                                    .shadow(radius: 4)
                            }
                        
                    }
                    
                    
                }
                
                VStack(spacing: 16){
                    Button("Send Message"){
                        show.toggle()
                        
                        
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.pink.opacity(0.4))
                    .clipShape(Capsule())
                    
                    
                    
                    Button("Keep Swiping"){
                        show.toggle()
                        
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.blue.opacity(0.1))
                    .clipShape(Capsule())
                    .overlay{
                        Capsule()
                            .stroke(.white, lineWidth: 0.5)
                            .shadow(radius: 4)
                    }
                }
                
                
                
            }
        }
    }
}

struct UserMatchview_Previews: PreviewProvider {
    static var previews: some View {
        UserMatchview(show: .constant(true))
            .environmentObject(MatchManager())
    }
}
