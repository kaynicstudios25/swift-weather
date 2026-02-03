//
//  HLineView.swift
//  swift-weather
//
//  Created by Kaylyn Groom on 2/3/26.
//


import SwiftUI

struct HLineView: View {
    var body: some View {
        Rectangle()
            .fill(Color.white.opacity(0.3))
            .frame(height: 1)
            .padding(.horizontal, 32)
    }
}