//
//  CoinToss.swift
//  Roulette Watch App
//
//  Created by Abhijay Nair on 6/17/24.
//

import SwiftUI

func getRandomColor() -> Color {
    let colors: [Color] = [.red, .blue]
    return Int.random(in: 0...1) == 0 ? colors[0] : colors[1]
}

struct CoinToss: View {
    
    @State private var backgroundColor = Color.black
    @State private var contentColor = Color.white
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundColor.ignoresSafeArea(.all)
                Circle()
                    .stroke(contentColor)
                    .safeAreaPadding(.all)
                Text("Tap to flip")
                    .foregroundStyle(contentColor)
                    .font(.title2)
                    .bold()
                
            }.onTapGesture {
                withAnimation {
                    backgroundColor = .black
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    withAnimation {
                        backgroundColor = getRandomColor()
                    }
                }
            }.navigationTitle("Coin Toss")
        }
    }
}

#Preview {
    CoinToss()
}
