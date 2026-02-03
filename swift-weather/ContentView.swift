//
//  ContentView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/2/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            BackgroundView(topColor:.indigo,
                           midColor: .cyan,
                           bottomColor: .teal)
            VStack{
                LocationView(text: "Trussville, AL")
                
                MainWeatherComponentView(weatherIcon: "cloud.fill",
                                         temperature: "49",
                                         overcast: "Partially cloudy",
                                         high: "H:59˚",
                                         low: "L:32˚")
                
                VStack{
                    WeatherDView(weatherData: "Rainy conditions expected around 4PM. Wind gusts are up to 16mph")
                    HLineView()
                    
                    HStack(spacing:20){
                        WeatherView (
                            timeOfDay: "Now",
                            imageName: "cloud.fill",
                            temperature: "49˚"
                        )
                        WeatherView (
                            timeOfDay: "11",
                            imageName: "cloud.fill",
                            temperature: "52˚"
                        )
                        WeatherView (
                            timeOfDay: "12",
                            imageName: "cloud.sun.fill",
                            temperature: "56˚"
                        )
                        WeatherView (
                            timeOfDay: "1",
                            imageName: "cloud.fill",
                            temperature: "59˚"
                        )
                        WeatherView (
                            timeOfDay: "2",
                            imageName: "cloud.fill",
                            temperature: "60˚"
                        )
                        WeatherView (
                            timeOfDay: "3",
                            imageName: "cloud.fill",
                            temperature: "59˚"
                        )
                        
                    }
                }
                .background(Color.white.opacity(0.1))
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.white.opacity(0.4), lineWidth: 2)
                )
                .padding(20)
                
                Spacer()
                
                WeatherButtonView(output: "Hello World!",
                                  buttonLabel: "Change Day Time")
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}





