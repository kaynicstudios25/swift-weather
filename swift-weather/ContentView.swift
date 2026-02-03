//
//  ContentView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/2/26.
//

import SwiftUI

struct ContentView: View {
    /// Zstack is used to cover full vertical and horizontal layout
    /// The primary view hierarchy for the weather screen.
    ///
    /// This view composes a layered interface using:
    /// - A ZStack with a full-screen linear gradient background spanning from black to red.
    /// - A VStack containing:
    ///   - Location title, current temperature, condition summary, and high/low indicators.
    ///   - A card-like section with a brief forecast summary and an hourly forecast strip,
    ///     including a highlighted "Now" item and subsequent hourly entries.
    ///   - A prominent "Learn More" button at the bottom with styled appearance.
    ///
    /// Layout and styling notes:
    /// - Uses `.edgesIgnoringSafeArea(.all)` to allow the gradient to extend under safe areas.
    /// - Employs typographic hierarchy via `.font` and `.foregroundColor(.white)` for readability on the dark gradient.
    /// - Card sections use semi-transparent backgrounds, rounded corners, strokes, and subtle shadows
    ///   to create visual separation while maintaining the layered aesthetic.
    /// - Spacing and padding are tuned to balance density and legibility across the vertical stack.
    ///
    /// Accessibility and system integration:
    /// - System SF Symbols (e.g., `moon.fill`, `cloud.fill`) are used for weather icons,
    ///   inheriting the configured font size and foreground color for consistency.
    /// - Button provides a clear call to action; currently logs to console and can be wired to navigation or detail content.
    ///
    /// - Returns: A view describing the complete content for the weather screen.
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.indigo,.cyan, .teal]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            VStack{
                TextView(text: "Trussville, AL",
                         fontSize: 32,
                         fontWeight: .medium)
                .padding(.top, 40)
                Spacer()
                Image(systemName:"cloud.fill")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)

                TextView(text: "49˚",
                         fontSize: 80,
                         fontWeight: .light)
                
                TextView(text: "Mostly Cloudy",
                         fontSize: 32,
                         fontWeight: .light)
                
                
                HStack{
                    TextView(text: "H:60˚",
                             fontSize: 22,
                             fontWeight: .medium)
                    
                    TextView(text: "L:31˚",
                             fontSize: 22,
                             fontWeight: .medium)
                }
                .padding(.bottom,30)
                
                VStack{
                    VStack (spacing: 10){
                        TextView(text: "Rainy conditions expected around 4PM. Wind gusts are up to 16mph",
                                 fontSize: 16,
                                 fontWeight: .regular)
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 12)
                    Rectangle()
                        .fill(Color.white.opacity(0.3))
                        .frame(height: 1)
                        .padding(.horizontal, 32)
                    
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
                        
                        .padding(.vertical,20)
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
                
                VStack (spacing: 20){
                    Button(action: {
                        print("Hello, World!")
                    }) {
                        TextView(text: "Learn More",
                                 fontSize: 24,
                                 fontWeight: .bold)
                            .padding(.horizontal, 32)
                            .padding(.vertical, 12)
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(12)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.white.opacity(0.4), lineWidth: 2)
                            )
                    }
                }
                .padding(.top, 40)
                
            }
        }
    }
}

#Preview {
    ContentView()
}

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
    }
}
struct TextView: View {
    
    var text: String
    var fontSize: CGFloat
    var fontWeight: Font.Weight
    
    var body: some View {
        VStack{
            Text(text)
                .font(.system(size: fontSize,
                              weight: fontWeight,
                              design: .default))
                .foregroundColor(.white)
        }
    }
}
