//
//  ContentView.swift
//  instagram
//
//  Created by Eddie Chung on 11/14/19.
//  Copyright © 2019 zerotoappstore. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Image("banff")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("zerotoappstore")
                        .font(.headline)
                    Text("San Francisco").font(.subheadline)
                }
            }.padding(.horizontal, 10)
            
            Image("sfbeach")
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
                
                Text("100 likes").font(.headline)
                HStack {
                    Text("zerotoappstore")
                        .font(.headline)
                    Text("I like long walks on the beach")
                }
                Text("View all 400 comments")
                    .foregroundColor(Color.gray)
            }.padding(.horizontal, 15)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
