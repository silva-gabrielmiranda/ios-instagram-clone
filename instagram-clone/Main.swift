//
//  Main.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 25/09/22.
//

import SwiftUI

struct Main: View {
    
    var profiles: ProfileViewModel
    var stories: StoriesViewModel
    @ObservedObject
    var posts: PostsViewModel
    
    init() {
        profiles = ProfileViewModel()
        stories = StoriesViewModel(profileViewModel: profiles)
        posts = PostsViewModel(profileViewModel: profiles)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                MainHeader()
                GeometryReader { geometry in
                    ScrollView(showsIndicators: false) {
                        StoriesBarView(stories: stories.model)
                        PostFeed(postsViewModel: posts, geometry: geometry)
                    }
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}
