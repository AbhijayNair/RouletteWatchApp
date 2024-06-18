//
//  RoulettePicker.swift
//  Roulette Watch App
//
//  Created by Abhijay Nair on 6/17/24.
//

import SwiftUI

func createRoom() {}

func joinRoom() {}

struct RoulettePicker: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color.black.ignoresSafeArea(.all)
                Spacer()
                VStack {
                    Button(action: joinRoom, label: {
                        Text("Join Room")
                    })
                    .background(.blue, in: RoundedRectangle(cornerRadius: 36.0))
                    .padding()
                    
                    Button(action: createRoom, label: {
                        Text("Create Room")
                    })
                    .padding()
                }.safeAreaPadding(.all)
            }
            .navigationTitle("Roulette")
        }
    }
}

#Preview {
    RoulettePicker()
}
