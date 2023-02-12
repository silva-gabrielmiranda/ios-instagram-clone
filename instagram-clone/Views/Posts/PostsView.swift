//
//  PostsView.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 10/02/23.
//

import SwiftUI

struct PostsView: View {
    
    var geometry: GeometryProxy
    
    var body: some View {
            PostView(geometry: geometry)
                .onTapGesture {
                    print(geometry.size)
                }
            PostView(geometry: geometry)
            PostView(geometry: geometry)
            PostView(geometry: geometry)
            PostView(geometry: geometry)
            PostView(geometry: geometry)
    }
}
