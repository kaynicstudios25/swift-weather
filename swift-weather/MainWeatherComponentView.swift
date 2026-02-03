//
//  MainWeatherComponentView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/3/26.
//


import SwiftUI

struct MainWeatherComponentView: View {
    
    var weatherIcon: String
    var temperature: String
    var overcast: String
    var high: String
    var low: String
    
    var body: some View {
        Image(systemName: weatherIcon)
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
        

        Text( "\(temperature)˚")
            .font(Font.system(size: 80,weight: .light))
            .foregroundColor(Color.white)
        
        Text(overcast)
            .font(Font.system(size: 32,weight: .light))
            .foregroundColor(Color.white)
        
        HStack{
            Text(high)
                .font(Font.system(size: 22, weight: .medium))
            
            Text(low)
                .font(Font.system(size: 22, weight: .medium))
        }
        .padding(.bottom,30)
        .foregroundColor(Color.white)
    }
}
