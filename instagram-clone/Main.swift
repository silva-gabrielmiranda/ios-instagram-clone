//
//  Main.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 25/09/22.
//

import SwiftUI

struct Main: View {
    
    var stories: StoriesViewModel = StoriesViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                MainHeader()
                GeometryReader { geometry in
                    ScrollView(showsIndicators: false) {
                        StoriesBarView(stories: stories.model)
                        PostsView(geometry: geometry)
                    }
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}
