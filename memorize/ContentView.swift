//
//  ContentView.swift
//  memorize
//
//  Created by Joao Pedro Gomes Ferreira on 06/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill()
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        })
    }
}

#Preview {
    ContentView()
}
