//
//  ContentView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/2/26.
//

import SwiftUI

struct ContentView: View {
    /// Zstack is used to cover full vertical and horizontal layout
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.black, .blue, .orange, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Trussville, AL")
                    .font(.system(size: 32,
                                  weight: .medium,
                                  design: .default))
                    .foregroundColor(.white)
                Text("40˚")
                    .font(.system(size: 84,
                                  weight: .light,
                                  design: .default))
                    .foregroundColor(.white)
                Text("Clear")
                    .font(.system(size: 32,
                                  weight: .light,
                                  design: .default))
                    .foregroundColor(.white)
                HStack{
                    Text("H:53˚")
                        .font(.system(size: 22,
                                      weight: .medium,
                                      design: .default))
                        .foregroundColor(.white)
                    Text("L:20˚")
                        .font(.system(size: 22,
                                      weight: .medium,
                                      design: .default))
                        .foregroundColor(.white)
                }

                VStack (spacing: 10){
                    
                    Text("Clear conditions will continue for the rest of the day. Winds gust are up to 8mph")
                        .font(.system(size: 18,
                                      weight: .regular,
                                      design: .default))
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 12)
                        .cornerRadius(12)
                    
                    HStack(spacing:20){
                        
                        VStack (spacing: 10){
                            Text("Now")
                                .font(.system(size: 18,
                                              weight: .bold,
                                              design:.default))
                                .foregroundColor(.white)
                            Image(systemName: "moon.fill")
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                            Text("40˚")
                                .font(.system(size: 18,
                                              weight: .light,
                                              design: .default))
                                .foregroundColor(.white)
                        }
                        VStack (spacing: 10){
                            Text("20")
                                .font(.system(size: 18,
                                              weight: .medium,
                                              design:.default))
                                .foregroundColor(.white)
                            Image(systemName: "moon.fill")
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                            Text("39˚")
                                .font(.system(size: 18,
                                              weight: .light,
                                              design: .default))
                                .foregroundColor(.white)
                        }
                        VStack (spacing: 10){
                            Text("21")
                                .font(.system(size: 18,
                                              weight: .medium,
                                              design:.default))
                                .foregroundColor(.white)
                            Image(systemName: "moon.fill")
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                            Text("38˚")
                                .font(.system(size: 18,
                                              weight: .light,
                                              design: .default))
                                .foregroundColor(.white)
                        }
                        VStack (spacing: 10){
                            Text("22")
                                .font(.system(size: 18,
                                              weight: .medium,
                                              design:.default))
                                .foregroundColor(.white)
                            Image(systemName: "moon.fill")
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                            Text("37˚")
                                .font(.system(size: 18,
                                              weight: .light,
                                              design: .default))
                                .foregroundColor(.white)
                        }
                        VStack (spacing: 10){
                            Text("23")
                                .font(.system(size: 18,
                                              weight: .medium,
                                              design:.default))
                                .foregroundColor(.white)
                            Image(systemName: "moon.fill")
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                            Text("36˚")
                                .font(.system(size: 18,
                                              weight: .light,
                                              design: .default))
                                .foregroundColor(.white)
                        }
                        VStack (spacing: 10){
                            Text("00")
                                .font(.system(size: 18,
                                              weight: .medium,
                                              design:.default))
                                .foregroundColor(.white)
                            Image(systemName: "cloud.fill")
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                            Text("35˚")
                                .font(.system(size: 18,
                                              weight: .light,
                                              design: .default))
                                .foregroundColor(.white)
                        }
                        VStack (spacing: 10){
                            Text("01")
                                .font(.system(size: 18,
                                              weight: .medium,
                                              design:.default))
                                .foregroundColor(.white)
                            Image(systemName: "cloud.fill")
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                            Text("35˚")
                                .font(.system(size: 18,
                                              weight: .light,
                                              design: .default))
                                .foregroundColor(.white)
                        }
                    }
                }
                
                VStack (spacing: 20){
                    Button(action: {
                        print("Hello, World!")
                    }) {
                        Text("More")
                            .font(.system(size: 24,
                                          weight: .bold,
                                          design:.default))
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                            .padding(.vertical, 12)
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 0)
                    }
                }
                
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
