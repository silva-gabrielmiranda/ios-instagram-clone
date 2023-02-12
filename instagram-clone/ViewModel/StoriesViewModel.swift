//
//  StoriesViewModel.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 04/11/22.
//

import SwiftUI

class StoriesViewModel: ObservableObject {
    
   @Published var model: Stories
    
    init(){
        model = Stories(stories: [])
        
        model.addStory(
            Story(
                username: "miraandao",
                content: [
                    StoryContent(
                        date: "2022-11-06",
                        contentURL: URL(string: "https://playzuando.com.br/wp-content/uploads/2022/06/Escape-From-Tarkov-Arena-is-a-new-standalone-FPS-coming.jpg")!
                    )
                ]
            )
        )
        
        model.addStory(
            Story(
                username: "joao",
                content: [
                    StoryContent(
                        date: "2022-11-06",
                        contentURL: URL(string: "https://playzuando.com.br/wp-content/uploads/2022/06/Escape-From-Tarkov-Arena-is-a-new-standalone-FPS-coming.jpg")!
                    )
                ]
            )
        )
        
        model.addStory(
            Story(
                username: "carlos",
                content: [
                    StoryContent(
                        date: "2022-11-06",
                        contentURL: URL(string: "https://playzuando.com.br/wp-content/uploads/2022/06/Escape-From-Tarkov-Arena-is-a-new-standalone-FPS-coming.jpg")!
                    )
                ]
            )
        )
        
        
    }
    
    var stories: [Story] {
        return model.stories
    }
    
}
