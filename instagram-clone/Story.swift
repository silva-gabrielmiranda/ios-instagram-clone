//
//  ContentView.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 25/09/22.
//

import SwiftUI

struct Story: View {
    
    var size: CGFloat
    var borderThickness: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .red, .purple, .red]), center: .center, startAngle: .degrees(50), endAngle: .degrees(410)),
                        lineWidth: 50
                    )
            Circle()
                .colorInvert()
                .padding(borderThickness / 2)
            Image("profile2")
                .resizable()
                .clipShape(Circle())
                .padding(borderThickness)
        }
            .frame(width: size, height: size)
    }
}
