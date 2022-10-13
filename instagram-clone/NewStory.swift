//
//  ContentView.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 25/09/22.
//

import SwiftUI

struct NewStory: View {
    
    var size: CGFloat
    var radius: CGFloat {
        size / 2
    }
    var borderThickness: CGFloat = 2
    var imagePadding: CGFloat = 5
    var addButtonScale: CGFloat = 0.3
    var plusIconScale: CGFloat = 0.4
    var fontSize: CGFloat = 10
    
    var body: some View {
        VStack {
            ZStack {
                GeometryReader { geometry in
                    Image("profile2")
                        .resizable()
                        .clipShape(Circle())
                    ZStack {
                        Circle()
                            .colorInvert()
                        Circle()
                            .padding(borderThickness)
                            .foregroundColor(.white)
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .foregroundColor(.blue)
                            .padding(borderThickness)
                    }
                        .frame(width: size * addButtonScale, height: size * addButtonScale)
                        .position(
                            x: radius + radius * sin(45 * Double.pi / 180),
                            y: radius + radius * sin(45 * Double.pi / 180)
                        )
                }
            }
                .frame(width: size, height: size)
            Text("Seu Story")
                .font(.system(size: fontSize))
        }
    }
}
