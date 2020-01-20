//
//  Post.swift
//  instagram
//
//  Created by Eddie Chung on 12/2/19.
//  Copyright © 2019 zerotoappstore. All rights reserved.
//

import Foundation

struct Post: Hashable, Codable, Identifiable {
    var id: String
    var username: String
    var image: String
    var profileImage: String
    var location: String
    var likes: [String]
    var description: String
    var comments: [String]
    
    init?(id: String, dict: [String: Any]) {
        self.id = id
        guard let username = dict["username"] as? String,
            let image = dict["image"] as? String,
            let profileImage = dict["profileImage"] as? String,
            let location = dict["location"] as? String,
            let likes = dict["likes"] as? [String],
            let description = dict["description"] as? String,
            let comments = dict["comments"] as? [String] else {
                return nil
        }
        
        self.username = username
        self.image = image
        self.profileImage = profileImage
        self.location = location
        self.likes = likes
        self.description = description
        self.comments = comments
    }
    
    init(id: String, username: String, imageName: String, profileImageName: String, location: String, likes: [String], description: String, comments: [String]) {
        self.id = id
        self.username = username
        self.image = imageName
        self.profileImage = profileImageName
        self.location = location
        self.likes = likes
        self.description = description
        self.comments = comments
    }
}

let postData: [Post] = loadDemoData()

func loadDemoData() -> [Post] {
    return [
        Post(id: "1", username: "zerotoappstore", imageName: "sfbeach", profileImageName: "banff", location: "San Francisco", likes: ["user1"], description: "I like beaches!", comments: ["nice", "ok"]),
        Post(id: "2", username: "eddy", imageName: "bananas", profileImageName: "banff", location: "Toronto", likes: ["user1"], description: "here are some yellow bananas", comments: []),
        Post(id: "3", username: "rainman", imageName: "rain", profileImageName: "banff", location: "Seattle", likes: ["user1"], description: "i love rain", comments: ["that's wet", "is rain water?"]),
        Post(id: "4", username: "foodperson", imageName: "tacos", profileImageName: "banff", location: "San Diego", likes: ["user1"], description: "look as these bomb fish tacos!", comments: ["can I have some?"]),
        Post(id: "5", username: "dogperson", imageName: "dog", profileImageName: "banff", location: "Dog Land", likes: ["user1"], description: "look at this amazing dog!", comments: ["awwwwww", "so cuteeee"])
    ]
}
