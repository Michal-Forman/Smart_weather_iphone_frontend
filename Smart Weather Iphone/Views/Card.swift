//
//  Card.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 12.01.2024.
//

import SwiftUI

struct Card: View {
    let text: String
    let icon: String
    let answer: String
    let value: Double
    
    init(text: String, icon: String, answer: String, value: Double) {
        self.text = text
        self.icon = icon
        self.answer = answer
        self.value = value
    }
    
    @State private var isRotated = false
    @State private var sliderValue: Double = 0.9
    
    var body: some View {
        ZStack {
            if isRotated {
                ZStack {
                    Rectangle()
                        .fill(Color.glass)
                        .frame(width: 350, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    ZStack(alignment: .trailing) {
                        Rectangle()
                            .fill(.white)
                            .frame(width: 250, height: 5)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                            .rotation3DEffect(.degrees(180), axis: (x: 0.0, y: 1.0, z: 0.0))
                        Rectangle()
                            .fill(Color.blue) // Color for the value indicator
                            .frame(width: CGFloat(value) * 250, height: 5)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                            .rotation3DEffect(.degrees(180), axis: (x: 0.0, y: 1.0, z: 0.0))
                    }
                }
            } else {
                Rectangle()
                    .fill(Color.glass)
                    .frame(width: 350, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                HStack {
                    Image(systemName: icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(.white)
                        .frame(width: 40, height: 40)
                    Text(text)
                        .font(.system(size: 24, weight: .medium, design: .rounded))
                        .foregroundStyle(.white)
                    Spacer()
                    Text(answer)
                        .font(.system(size: 24, weight: .medium, design: .rounded))
            }
                .frame(width: 300)
            
                .foregroundStyle(.white)
            }
            
        }
        .rotation3DEffect(
            .degrees(isRotated ? 180 : 0),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .onTapGesture {
                withAnimation {
                        isRotated.toggle()
                    }
                }
    }
}

#Preview {
    Card(text: "Umbrella", icon: "umbrella", answer: "No", value: 0.5)
}
