//
//  WeatherView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/3/26.
//

import SwiftUI

struct WeatherView: View {
    var timeOfDay: String
    var imageName: String
    var temperature: String
    
    var body: some View {
        VStack (spacing: 10){
            Text(timeOfDay)
                .font(.system(size: 18,
                              weight: .bold,
                              design:.default))
                .foregroundColor(.white)
                .padding(4)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .foregroundColor(.white)
                .frame(width: 20, height: 20)
            
            Text(temperature)
                .font(.system(size: 18,
                              weight: .bold,
                              design: .default))
                .foregroundColor(.white)

        }
        .padding(.vertical,20)
    }
}
