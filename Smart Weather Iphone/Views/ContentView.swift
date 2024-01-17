//
//  ContentView.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 09.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Background()
            VStack {
                Title()
                MainCard()
                Cards()
                Spacer()
                
            }
        }
    }
    
    
    
    
}



#Preview {
    ContentView()
}


