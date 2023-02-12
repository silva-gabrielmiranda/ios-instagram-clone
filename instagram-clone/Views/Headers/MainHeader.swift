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
            newButton(.new, width: iconSize, heigth: iconSize, padding: iconPadding)
            newButton(.notifications, width: iconSize, heigth: iconSize, padding: iconPadding)
            newButton(.direct, width: iconSize, heigth: iconSize, padding: iconPadding)
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
    
    @ViewBuilder
    private func newButton(_ icon: Icons.options, width: CGFloat, heigth: CGFloat, padding: CGFloat) -> some View {
        Image(systemName: Icons().systemName[icon]!)
            .resizable()
            .frame(width: width, height: heigth)
            .padding(.horizontal, padding)
    }
}

struct MainHeader_Previews: PreviewProvider {
    static var previews: some View {
        MainHeader()
    }
}
