//
//  PostView.swift
//  instagram
//
//  Created by Eddie Chung on 12/2/19.
//  Copyright © 2019 zerotoappstore. All rights reserved.
//

import SwiftUI

struct PostView: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Image(post.profileImage)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(post.username)
                        .font(.headline)
                    Text(post.location).font(.subheadline)
                }
            }.padding(.horizontal, 10)
            
            Image(post.image)
                .resizable()
                .frame(height: 630)
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 20) {
                    Image(systemName: "suit.heart")
                        .resizable()
                    .frame(width: 30, height: 30)
                    Image(systemName: "message")
                        .resizable()
                    .frame(width: 30, height: 30)
                    Image(systemName: "paperplane")
                        .resizable()
                    .frame(width: 30, height: 30)
                    Spacer()
                    Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 25, height: 30)
                }
                
                Text("\(post.likes) likes").font(.headline)
                HStack {
                    Text(post.username)
                        .font(.headline)
                    Text(post.description)
                }
                Text("View all \(post.comments.count) comments")
                    .foregroundColor(Color.gray)
            }.padding(.horizontal, 15)
            Spacer()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: postData[1])
    }
}
