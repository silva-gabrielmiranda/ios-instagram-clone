//
//  ContentView.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 25/09/22.
//

import SwiftUI

struct NewStoryView: View {
    
    var size: CGFloat
    var radius: CGFloat {
        size / 2
    }
    var frameSize: CGFloat {
        size * CONSTANTS.addButtonScale
    }
    var buttonPosition: CGFloat {
        radius + radius * sin(45 * Double.pi / 180)
    }
    
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
                            .padding(CONSTANTS.borderThickness)
                            .foregroundColor(.white)
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .foregroundColor(.blue)
                            .padding(CONSTANTS.borderThickness)
                    }
                    .frame(width: frameSize, height: frameSize)
                    .position(
                        x: buttonPosition,
                        y: buttonPosition
                    )
                }
            }
            .frame(width: size, height: size)
            Text("Seu Story")
                .font(.system(size: CONSTANTS.fontSize))
        }
    }
    
    struct CONSTANTS {
        static var borderThickness: CGFloat = 2
        static var imagePadding: CGFloat = 5
        static var addButtonScale: CGFloat = 0.3
        static var plusIconScale: CGFloat = 0.4
        static var fontSize: CGFloat = 10
    }
    
}


