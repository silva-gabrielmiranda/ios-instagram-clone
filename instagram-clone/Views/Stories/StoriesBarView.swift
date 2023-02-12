//
//  StoriesBar.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 16/10/22.
//

import SwiftUI

struct StoriesBarView: View {

    var stories: Stories
    
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    NewStoryView(size: CONSTANT.storySize)
                    ForEach(stories.stories.indices, id: \.self){ index in
                        let story = stories.stories[index]
                        NavigationLink(destination: StoryView(story: story)) {
                            StoryMiniature(size: CONSTANT.storySize, story: story)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
    }
    
    struct CONSTANT {
        static let storySize: CGFloat = 80
    }
}
