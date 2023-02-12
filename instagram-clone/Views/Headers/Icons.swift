//
//  HeaderIcons.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 09/02/23.
//

import SwiftUI


struct Icons {
    let systemName: [options: String] = [
        .new : "plus.app",
        .notifications : "heart",
        .direct : "paperplane",
        .bookmark: "bookmark",
        .message: "message"
        
    ]
    
    enum options {
        case new, notifications, direct, bookmark, message
    }

}
