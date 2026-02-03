//
//  TextView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/3/26.
//


import SwiftUI

struct LocationView: View {
    
    var text: String
    
    var body: some View {
        VStack{
            Text(text)
                .font(.system(size: 32,
                              weight: .medium,
                              design: .default))
                .foregroundColor(.white)
                .padding(.top, 40)
        }
    }
}
