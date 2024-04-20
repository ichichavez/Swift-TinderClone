//
//  ProfileImageGridView.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-17.
//

import SwiftUI

struct ProfileImageGridView: View {
    let user: User
   
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(0 ..< 6 ){ index in
                if index < user.profileImageURLs.count{
                    Image(user.profileImageURLs[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth, height: imageHeight)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                } else {
                    ZStack(alignment: .bottomTrailing) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.secondarySystemBackground))
                            .frame(width: imageWidth, height: imageHeight)
                        
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.large)
                            .foregroundColor(.red)
                            .offset(x: 4, y: 4)
                    }
                }
            }
            
        }
    }
}

private extension ProfileImageGridView {
     var columns: [GridItem]  {
        [
        .init(.flexible()),
        .init(.flexible()),
        .init(.flexible())
        ]
        
        
    }
    var imageWidth: CGFloat {
        return 110
    }
    
    var imageHeight: CGFloat {
        return 160
    }
    
}

struct ProfileImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImageGridView(user: MockData.users[2])
    }
}
