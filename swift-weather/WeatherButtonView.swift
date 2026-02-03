//
//  WeatherButtonView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/3/26.
//

import SwiftUI

struct WeatherButtonView: View {
    
    var output: String
    var buttonLabel: String
    
    var body: some View {
        Button(action: {
            print(output)
        }) {
            Text(buttonLabel)
                .font(.system(size: 24,
                              weight: .bold,
                              design: .default))
                .foregroundColor(.white)
            .frame(width: 280, height: 50)
            .background(Color.white.opacity(0.2))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                .stroke(Color.white.opacity(0.4), lineWidth: 2)
            )
        }
    }
}
