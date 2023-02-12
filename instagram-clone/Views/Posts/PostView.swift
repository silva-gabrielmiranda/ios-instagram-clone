//
//  Post.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 10/02/23.
//

import SwiftUI

struct PostView: View {
    
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
                    Image("profile2")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                    Text("miraandao")
                    Spacer()
                }
                    .padding(10)
                AsyncImage(url: URL(string: "https://playzuando.com.br/wp-content/uploads/2022/06/Escape-From-Tarkov-Arena-is-a-new-standalone-FPS-coming.jpg")) { image in
                    image
                        .resizable()
                } placeholder: {
                    ProgressView()
                }
                    .frame(maxHeight: mediaMaxSize.height)
                HStack {
                    newButton(.notifications)
                    newButton(.message)
                    newButton(.direct)
                    Spacer()
                    newButton(.bookmark)
                }
                    .padding(10)
                Group {
                    Text("98 curtidas")
                        .font(Font.body.bold())
                    Text("Ver todos 150 comentários")
                        .foregroundColor(.gray)
                        .font(Font.system(size: 14))
                    Text("Há 9 horas")
                        .foregroundColor(.gray)
                        .font(Font.system(size: 12))
                }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 0.5)
            }
        }
    }
    
    @ViewBuilder
    private func newButton(_ icon: Icons.options, width: CGFloat = 25, heigth: CGFloat = 25, padding: CGFloat = 10) -> some View {
        Image(systemName: Icons().systemName[icon]!)
            .resizable()
            .frame(width: width, height: heigth)
            .padding(.horizontal, padding)
    }
    
    private struct CONSTANTS {
        static let mediaScale: CGFloat = 0.9
    }
}
