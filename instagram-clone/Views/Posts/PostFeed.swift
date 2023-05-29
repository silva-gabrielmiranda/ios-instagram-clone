//
//  PostsView.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 10/02/23.
//

import SwiftUI

struct PostFeed: View {
    

    var postsViewModel: PostsViewModel
    var geometry: GeometryProxy
    
    var body: some View {
        ForEach(postsViewModel.posts.indices, id: \.self){ index in
            PostView(postsViewModel: postsViewModel, post: postsViewModel.posts[index], geometry: geometry)
        }
    }
}
