//
//  BackgroundView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/3/26.
//


import SwiftUI

struct BackgroundView: View {
    
    var topColor: Color
    var midColor: Color
    var bottomColor: Color
    
    var body: some View{
        LinearGradient(gradient: Gradient(colors: [topColor, midColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
    }
}