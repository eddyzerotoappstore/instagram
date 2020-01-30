//
//  ContentView.swift
//  instagram
//
//  Created by Eddie Chung on 11/14/19.
//  Copyright © 2019 zerotoappstore. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var session = FirebaseSession()

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Text("").frame(minWidth: 0, maxWidth: .infinity)
                ForEach(session.posts) { post in
                    PostView(post: post)
                  }
                  .listRowInsets(EdgeInsets())
            }
        }.onAppear(perform: listen)
    }
    
    func listen() {
        session.getPosts()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
