//
//  Post.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 10/02/23.
//

import SwiftUI

struct PostView: View {
    
    var postsViewModel: PostsViewModel
    var post: Post
    var geometry: GeometryProxy
    
    var mediaMaxSize: CGSize {
        CGSize(width: geometry.size.width, height: geometry.size.height * CONSTANTS.mediaScale)
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: mediaMaxSize.height)
                .colorInvert()
            VStack(alignment: .leading) {
                HStack {
                    AsyncImage(url: post.owner.pictureURL) { image in
                        image
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 40, height: 40)
                    } placeholder: {
                        ZStack {
                            Rectangle()
                                .colorInvert()
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                            ProgressView()
                        }
                    }
                    
                    Text(post.owner.username)
                    Spacer()
                }
                    .padding(10)
                AsyncImage(url: post.mediaURL) { image in
                    image
                        .resizable()
                } placeholder: {
                    ZStack {
                        Rectangle()
                            .colorInvert()
                        ProgressView()
                    }
                }
                    .frame(maxHeight: mediaMaxSize.height)
                HStack {
                    Icon(option: post.isLiked ? .liked : .like)
                        .onTapGesture {
                            postsViewModel.like(post)
                        }
                    Icon(option: .directMessages)
                    Icon(option: .share)
                    Spacer()
                    Icon(option: post.isSaved ? .bookmarked : .bookmark, width: 20)
                        .onTapGesture {
                            postsViewModel.save(post)
                        }
                }
                    .padding(10)
                Group {
                    Text("\(post.likes) curtidas")
                        .font(Font.body.bold())
                    Text("Ver todos \(post.comments) comentários")
                        .foregroundColor(.gray)
                        .font(Font.system(size: 14))
                    Text(post.timeDiffToToday)
                        .foregroundColor(.gray)
                        .font(Font.system(size: 12))
                }
                    .padding(.horizontal, 10)
                    .padding(.bottom, 1)
            }
        }
    }
    
    
    private struct CONSTANTS {
        static let mediaScale: CGFloat = 0.9
    }
}
