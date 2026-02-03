//
//  WeatherDView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/3/26.
//

import SwiftUI
struct WeatherDView: View {
    
    var weatherData: String
    
    var body: some View {
        VStack {
            Text(weatherData)
                .font(.system(size: 16,
                              weight: .regular,
                              design: .default))
                .foregroundColor(.white)
                
            .padding(.horizontal, 32)
            .padding(.vertical, 12)
        }
    }
}

