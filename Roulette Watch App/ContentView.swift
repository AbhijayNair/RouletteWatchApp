//
//  ContentView.swift
//  Roulette Watch App
//
//  Created by Abhijay Nair on 6/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Text("Roulette")
            Text("Coin Toss")
        }.listStyle(CarouselListStyle())
    }
}

#Preview {
    ContentView()
}
