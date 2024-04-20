//
//  UserInfoView.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-01.
//

import SwiftUI

struct UserInfoView: View {
    @Binding var showProfileModal: Bool
    let user: User
    
    var body: some View {
        VStack(alignment: .leading){
            
            HStack{
                
                Text(user.fullname)
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.leading, 10)
                
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button{
                    showProfileModal.toggle()
                        
                }label: {
                    Image(systemName: "arrow.up.circle")
                        .padding(.trailing, 10)
                        .fontWeight(.bold)
                        .imageScale(.large)
                        
                }
                
            }
            
            
            Text (" Some test bio for now")
                .font(.subheadline)
                .lineLimit(2)
                .padding(.leading, 10)
            
            
        }
        //
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView(showProfileModal: .constant(false),
                    user: MockData.users[1])
    }
}
