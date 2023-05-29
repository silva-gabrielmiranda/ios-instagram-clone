//
//  Profile.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 12/02/23.
//

import Foundation

struct Profile {
    let name: String
    let username: String
    let pictureURL: URL
}

struct Profiles {
    var profiles: [Profile] = []
    
    
    mutating func addProfile(_ profile: Profile){
        profiles.append(profile)
    }
    
    func getRandomProfile() -> Profile? {
        guard let profile = profiles.randomElement() else {
            return nil
        }
        return profile
    }
}
