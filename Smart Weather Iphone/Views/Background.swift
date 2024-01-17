//
//  Background.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 12.01.2024.
//

import SwiftUI

struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.normalBlue, .lightBlue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Background()
}
