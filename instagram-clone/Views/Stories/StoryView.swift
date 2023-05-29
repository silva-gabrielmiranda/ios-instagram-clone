//
//  StoryView.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 13/11/22.
//

import SwiftUI

struct StoryView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var story: Story
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AsyncImage(url: story.content[0].contentURL) { image in
                    image
                        .resizable()
                } placeholder: {
                    ProgressView()
                }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                VStack {
                    HStack {
                        Button("<") {
                            presentationMode.wrappedValue.dismiss()
                        }
                        AsyncImage(url: story.profile.pictureURL) { image in
                            image
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: geometry.size.width * 0.1, height: geometry.size.width * 0.1)
                        } placeholder: {
                            ProgressView()
                        }
                        Text("\(story.profile.username)")
                            .font(Font.body.bold())
                        Spacer()
                    }
                        .padding()
                    Spacer()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
