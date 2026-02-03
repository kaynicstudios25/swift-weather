//
//  TextView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/3/26.
//


import SwiftUI

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