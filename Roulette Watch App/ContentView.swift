//
//  ContentView.swift
//  Roulette Watch App
//
//  Created by Abhijay Nair on 6/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var homeListIndex = 0
    @State var homeListZViews: [AnyView] = []
    @State var scrollAmount = 1.0
    @State var touchTime: Date? = Date()
    
    var body: some View {
        ZStack {
            if homeListZViews.count > 0 {
                homeListZViews[homeListIndex]
            }
        }
        .focusable(true)
        .digitalCrownRotation($scrollAmount, from: 0, through: Double(homeListZViews.count), by: 1.0, sensitivity: .low, isContinuous: true, isHapticFeedbackEnabled: true)
        .onChange(of: scrollAmount){ oldViewCount, newViewCount in
            if newViewCount < 0.5 {
                homeListIndex = homeListZViews.count - 1
            }
            else {
                homeListIndex = Int(newViewCount - 0.5)
            }
        }
        .onAppear(){
            homeListZViews.append(AnyView(RoulettePicker().ignoresSafeArea(.all).toolbar(.hidden)))
            homeListZViews.append(AnyView(CoinToss().ignoresSafeArea(.all).toolbar(.hidden)))
        }
    }
}

#Preview {
    ContentView()
}
