//
//  Post.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 12/02/23.
//

import Foundation

struct Post: Identifiable {
    
    let id: Int
    let owner: Profile
    var createdAt: String = "1970-01-01"
    var timeDiffToToday: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let dateComponent = Calendar.current.dateComponents([.year, .month, .day], from: formatter.date(from: self.createdAt)!, to: Date.now)
        
        if(dateComponent.year! > 0) {
            return "Há \(dateComponent.year!) \(dateComponent.year == 1 ? "ano" : "anos")"
        }
        if(dateComponent.month! > 0) {
            return "Há \(dateComponent.month!) \(dateComponent.month == 1 ? "mês" : "meses")"
        }
        if(dateComponent.day! > 0) {
            return "Há \(dateComponent.day!) \(dateComponent.day == 1 ? "dia" : "dias")"
        }
        if(dateComponent.hour! > 0) {
            return "Há \(dateComponent.hour!) \(dateComponent.hour == 1 ? "hora" : "horas")"
        }
        if(dateComponent.minute! > 0) {
            return "Há \(dateComponent.minute!) \(dateComponent.minute == 1 ? "minuto" : "minutos")"
        }
        if(dateComponent.second! > 0) {
            return "Há \(dateComponent.second!) \(dateComponent.second == 1 ? "segundo" : "segundos")"
        }
        return "Há pouco"
    }
    let mediaURL: URL
    let description: String
    var likes: Int = 0
    var comments: Int = 0
    var isSaved: Bool = false
    var isLiked: Bool = false

    
    mutating func like() {
        isLiked = !isLiked
    }
    
    mutating func save() {
        isSaved = !isSaved
    }
}

struct Posts {
    var posts: [Post]
    
    mutating func like(_ post: Post) {
        if let index = posts.firstIndex(where: { $0.id == post.id }) {
            posts[index].like()
        }
    }
    
    mutating func save(_ post: Post) {
        if let index = posts.firstIndex(where: { $0.id == post.id }) {
            posts[index].save()
        }
    }
}
