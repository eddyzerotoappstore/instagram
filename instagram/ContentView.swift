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
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(postData) { post in
                    PostView(post: post)
                  }
                  .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
