//
//  ContentView.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 25/09/22.
//

import SwiftUI

struct StoryMiniature: View {
    
    var size: CGFloat
    var story: Story
    var borderThickness: CGFloat = 2
    var imagePadding: CGFloat = 5
    var fontSize: CGFloat = 10
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .strokeBorder(
                        AngularGradient(
                            gradient: Gradient(
                                colors: [.red, .yellow, .red, .purple, .red]
                            ),
                            center: .center,
                            startAngle: .degrees(50),
                            endAngle: .degrees(410)
                        ),
                            lineWidth: borderThickness
                        )
                Image(story.profilePicture)
                    .resizable()
                    .clipShape(Circle())
                    .padding(imagePadding)
            }
                .frame(width: size, height: size)
            Text(story.username)
                .font(.system(size: fontSize))
        }
    }
}
