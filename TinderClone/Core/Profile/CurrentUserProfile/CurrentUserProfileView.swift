//
//  CurrentUserProfileView.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-16.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEditProfile = false
    let user: User
    var body: some View {
        
        NavigationView {
            List{
                //header view
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {showEditProfile.toggle() }
                
                //acount ifo
                
                Section("Acount Information"){
                    HStack{
                        Text("Name")
                        
                        Spacer()
                        
                        Text(user.fullname)
                    }
                    
                    HStack{
                        Text("Email")
                        
                        Spacer()
                        
                        Text("user@gmail.com")
                    }
                    
                    HStack{
                        Text("Phone")
                        
                        Spacer()
                        
                        Text("0971 699 228")
                    }
                }
                
                //legal
                
                
                Section ("legal"){
                    Text("Terms of service")
                }
                // logout/delete
                
                Section{
                    Button("Logout"){
                        print("DEBUG: Logout here..")
                        
                    }
                  }
                .foregroundStyle(.red)
                
                Section{
                    Button("Delete Account"){
                        print("DEBUG: Do yo want to delete your account..")
                        
                    }
                  }
                
                .foregroundStyle(.red)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEditProfile){
                EditProfileView(user: user)
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: MockData.users[1])
    }
}
