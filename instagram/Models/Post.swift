//
//  Post.swift
//  instagram
//
//  Created by Eddie Chung on 12/2/19.
//  Copyright © 2019 zerotoappstore. All rights reserved.
//

import Foundation

struct Post: Hashable, Codable, Identifiable {
    var id: Int
    var username: String
    var imageName: String
    var profileImageName: String
    var location: String
    var likes: Int
    var description: String
    var comments: [String]
}

let postData: [Post] = loadDemoData()

func loadDemoData() -> [Post] {
    return [
        Post(id: 1, username: "zerotoappstore", imageName: "sfbeach", profileImageName: "banff", location: "San Francisco", likes: 100, description: "I like beaches!", comments: ["nice", "ok"]),
        Post(id: 2, username: "eddy", imageName: "bananas", profileImageName: "banff", location: "Toronto", likes: 20, description: "here are some yellow bananas", comments: []),
        Post(id: 3, username: "rainman", imageName: "rain", profileImageName: "banff", location: "Seattle", likes: 5, description: "i love rain", comments: ["that's wet", "is rain water?"]),
        Post(id: 4, username: "foodperson", imageName: "tacos", profileImageName: "banff", location: "San Diego", likes: 200, description: "look as these bomb fish tacos!", comments: ["can I have some?"]),
        Post(id: 5, username: "dogperson", imageName: "dog", profileImageName: "banff", location: "Dog Land", likes: 2100, description: "look at this amazing dog!", comments: ["awwwwww", "so cuteeee"])
    ]
}
