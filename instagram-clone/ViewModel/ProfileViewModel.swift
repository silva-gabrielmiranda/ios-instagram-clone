//
//  ProfileViewModel.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 21/02/23.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    
    @Published private(set) var model: Profiles
    
    init() {
        model = Profiles()
        
        model.addProfile(Profile(name: "Thiago Lamonica", username: "tico_barreto", pictureURL: URL(string: "https://randomuser.me/api/portraits/men/\(Int.random(in: 1...99)).jpg")!))
        
        model.addProfile(Profile(name: "Arthur Henrique", username: "arthur.henr1", pictureURL: URL(string: "https://randomuser.me/api/portraits/men/\(Int.random(in: 1...99)).jpg")!))
        
        model.addProfile(Profile(name: "Lucas Lima", username: "lcsprp", pictureURL: URL(string: "https://randomuser.me/api/portraits/men/\(Int.random(in: 1...99)).jpg")!))
        
        model.addProfile(Profile(name: "Gabriella Reis", username: "gabi_reis", pictureURL: URL(string: "https://randomuser.me/api/portraits/women/\(Int.random(in: 1...99)).jpg")!))
        
        model.addProfile(Profile(name: "Roberta Santos", username: "rob_santos", pictureURL: URL(string: "https://randomuser.me/api/portraits/women/\(Int.random(in: 1...99)).jpg")!))
        
        model.addProfile(Profile(name: "Joana Silva", username: "jo_silva", pictureURL: URL(string: "https://randomuser.me/api/portraits/women/\(Int.random(in: 1...99)).jpg")!))
        
        model.addProfile(Profile(name: "Gilberto Araujo", username: "aragil", pictureURL: URL(string: "https://randomuser.me/api/portraits/men/\(Int.random(in: 1...99)).jpg")!))
        
        model.addProfile(Profile(name: "Rosa Clara", username: "rose_clare", pictureURL: URL(string: "https://randomuser.me/api/portraits/women/\(Int.random(in: 1...99)).jpg")!))
        
        model.addProfile(Profile(name: "Caio Roberto", username: "caio_rob", pictureURL: URL(string: "https://randomuser.me/api/portraits/men/\(Int.random(in: 1...99)).jpg")!))
        
        model.addProfile(Profile(name: "Larissa Mello", username: "lamello", pictureURL: URL(string: "https://randomuser.me/api/portraits/women/\(Int.random(in: 1...99)).jpg")!))
        
    }
    
    var profiles: [Profile] {
        return model.profiles
    }
    
    
}
