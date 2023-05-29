//
//  HeaderIcons.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 09/02/23.
//

import SwiftUI


struct Icon: View {
    
    var option: Icon.options
    var width: CGFloat = 25
    var height: CGFloat = 25
    var padding: CGFloat = 10
    
    var body: some View {
        newButton(option, width: width, heigth: height)
            .padding(.horizontal, padding)
    }
    
    let systemName: [options: String] = [
        .new : "plus.app",
        .notifications : "heart",
        .share : "paperplane",
        .bookmarked : "bookmark.fill",
        .bookmark : "bookmark",
        .directMessages : "message",
        .liked : "heart.fill",
        .like : "heart"
    ]
    
    enum options {
        case new, notifications, share, bookmark, bookmarked, directMessages, liked, like
    }
    
    @ViewBuilder
    private func newButton(_ icon: Icon.options, width: CGFloat, heigth: CGFloat) -> some View {
        Image(systemName: systemName[icon]!)
            .resizable()
            .frame(width: width, height: heigth)
    }
    
}
