//
//  MainCard.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 12.01.2024.
//

import SwiftUI

struct MainCard: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.seathroughBlue)
                .frame(width: 350, height: 200)
                .opacity(0.5)
                .clipShape(RoundedRectangle(cornerRadius: 50))
            VStack {
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 130)
                Text("Today is a beuatiflu day!!!")
                    .font(.system(size: 24, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
                
            }
            
        }
        .padding(.top, 30)
        .padding(.bottom, 30)
    }
}


#Preview {
    MainCard()
}
