//
//  MainHeader.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 16/10/22.
//

import SwiftUI

struct MainHeader: View {
    
    var iconSize: CGFloat = 25
    var iconPadding: CGFloat = 10
    var logoSize: CGSize = CGSize(width: 100, height: 30)
    
    var body: some View {
        HStack(alignment: .center) {
            logo
            Spacer()
            Icon(option: .new)
            Icon(option: .notifications, height: 22.5)
            Icon(option: .share)
        }
            .padding(.vertical)
    }
    
    private var logo: some View {
        Image("logo")
            .resizable()
            .colorInvert()
            .frame(width: logoSize.width, height: logoSize.height)
            .padding(.horizontal)
    }
}
