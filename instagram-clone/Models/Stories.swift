//
//  Stories.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 06/11/22.
//

import Foundation

struct Stories {
    var stories: [Story]
    
    init() {
        stories = []
    }
    
    mutating func addStory(_ story: Story){
        stories.append(story)
    }
}

struct Story  {
    
    let profile: Profile
    var content: [StoryContent]
    
    mutating func addStoryContent(_ storyContent: StoryContent){
        content.append(storyContent)
    }
    
}

struct StoryContent {
    var date: String
    var contentURL: URL
}
