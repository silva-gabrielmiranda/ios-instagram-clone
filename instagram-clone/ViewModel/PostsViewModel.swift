//
//  PostsViewModel.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 03/05/23.
//

import SwiftUI

class PostsViewModel : ObservableObject {
    
    @Published var model: Posts
    
    init(profileViewModel: ProfileViewModel) {
        model = Posts(posts: [
            Post(id: 1, owner: profileViewModel.profiles.randomElement()!, createdAt: "2022-04-23", mediaURL: URL(string: "https://img.freepik.com/premium-photo/serious-bearded-young-businessman-working-front-laptop-while-sitting-by-desk-against-male-colleague-openspace-bureau_236854-37210.jpg")!, description: "Nem lembro"),
            Post(id: 2, owner: profileViewModel.profiles.randomElement()!, createdAt: "2021-04-23", mediaURL: URL(string: "https://img.freepik.com/premium-photo/serious-bearded-young-businessman-working-front-laptop-while-sitting-by-desk-against-male-colleague-openspace-bureau_236854-37210.jpg")!, description: "Nem lembro"),
            Post(id: 3, owner: profileViewModel.profiles.randomElement()!, createdAt: "2023-04-04", mediaURL: URL(string: "https://img.freepik.com/premium-photo/serious-bearded-young-businessman-working-front-laptop-while-sitting-by-desk-against-male-colleague-openspace-bureau_236854-37210.jpg")!, description: "Nem lembro"),
            Post(id: 4, owner: profileViewModel.profiles.randomElement()!, createdAt: "2023-03-04", mediaURL: URL(string: "https://img.freepik.com/premium-photo/serious-bearded-young-businessman-working-front-laptop-while-sitting-by-desk-against-male-colleague-openspace-bureau_236854-37210.jpg")!, description: "Nem lembro"),
            Post(id: 5, owner: profileViewModel.profiles.randomElement()!, createdAt: "2023-05-04", mediaURL: URL(string: "https://img.freepik.com/premium-photo/serious-bearded-young-businessman-working-front-laptop-while-sitting-by-desk-against-male-colleague-openspace-bureau_236854-37210.jpg")!, description: "Nem lembro"),
            Post(id: 6, owner: profileViewModel.profiles.randomElement()!, createdAt: "2023-05-01", mediaURL: URL(string: "https://img.freepik.com/premium-photo/serious-bearded-young-businessman-working-front-laptop-while-sitting-by-desk-against-male-colleague-openspace-bureau_236854-37210.jpg")!, description: "Nem lembro"),
            Post(id: 7, owner: profileViewModel.profiles.randomElement()!, createdAt: "2023-04-23", mediaURL: URL(string: "https://img.freepik.com/premium-photo/serious-bearded-young-businessman-working-front-laptop-while-sitting-by-desk-against-male-colleague-openspace-bureau_236854-37210.jpg")!, description: "Nem lembro")
        ])
    }
    
    var posts: [Post] {
        return model.posts
    }
    
    func like(_ post: Post) {
        model.like(post)
    }
    
    func save(_ post: Post) {
        model.save(post)
    }
}
