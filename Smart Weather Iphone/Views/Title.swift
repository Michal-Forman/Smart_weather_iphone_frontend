//
//  Title.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 12.01.2024.
//

import SwiftUI

struct Title: View {
    var body: some View {
        Text("Smart Weather")
            .font(.system(size: 40, weight: .medium, design: .rounded ))
            .foregroundStyle(.white)
            .padding()
    }
}

#Preview {
    Title()
}
