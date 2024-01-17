//
//  OutfitCard.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 13.01.2024.
//

import SwiftUI

struct OutfitCard: View {
    
    let answer: String
    let value: Double
    
    init(answer: String, value: Double) {
        self.answer = answer
        self.value = value
    }
    
    @State private var expanded = false
    @State private var showSlider = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.glass)
                .frame(width: 350, height: expanded ? 120 : 60)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .animation(.easeInOut(duration: 0.5), value: expanded)
                
            
            HStack {
                Image(systemName: "tshirt.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.white)
                    .frame(width: 40, height: 40)
                    .padding(.top, 10)
                Text("Outfit")
                    .font(.system(size: 24, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
                    .padding(.top, 10)
                Spacer()
                Text(answer)
                    .font(.system(size: 24, weight: .medium, design: .rounded))
                    .padding(.top, 10)
            }
            .frame(width: 300)
            .animation(.easeInOut(duration: 0.5), value: expanded)
            
            .foregroundStyle(.white)
            // Additional Rectangle that appears when expanded
            if expanded {
                
                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(.white)
                        .frame(width: 250, height: 5)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .rotation3DEffect(.degrees(180), axis: (x: 0.0, y: 1.0, z: 0.0))
                        .offset(y: 80)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: CGFloat(value) * 250, height: 5)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .rotation3DEffect(.degrees(180), axis: (x: 0.0, y: 1.0, z: 0.0))
                        .offset(y: 80)
                    ForEach([0.2, 0.4, 0.6, 0.8], id: \.self) { point in
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 2, height: 20)
                                .offset(x: CGFloat(point) * 250 - 1, y: 80) // Adjust position accordingly
                        }
                }
            }
        }
        .onTapGesture {
            withAnimation {
                expanded.toggle()
            }
        }
    }
}

#Preview {
    OutfitCard(answer: "Summer", value: 0.1)
}
