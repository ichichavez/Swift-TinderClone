//
//  SwipeAcctionIndicatorView.swift
//  TinderClone
//
//  Created by Isidro Chávez on 2024-04-03.
//

import SwiftUI

struct SwipeAcctionIndicatorView: View {
    @Binding var xOffset: CGFloat
    
    
    var body: some View {
        HStack {
            Text ("LIKE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.green)
                .overlay{
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.green, lineWidth: 2)
                        .frame(width: 100, height: 40)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffset / SizeConstants.screenCutoff))
            
            Spacer()
            
            Text ("NOPE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .overlay{
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red, lineWidth: 2)
                        .frame(width: 100, height: 40)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset / SizeConstants.screenCutoff) * -1)
            
           
            
        }
        .padding(90)
    }
}

struct SwipeAcctionIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeAcctionIndicatorView(xOffset: .constant(20))
    }
}
