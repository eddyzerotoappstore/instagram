//
//  NewPostView.swift
//  instagram
//
//  Created by Edward Chung on 1/22/20.
//  Copyright © 2020 zerotoappstore. All rights reserved.
//

import SwiftUI

struct NewPostView: View {
    var body: some View {
        VStack {
            Button(action: {
                /// TODO 1: Add the action here
            }) {
                Text("Choose Photo")
            }.padding(30)
            Button(action: {
                /// TODO 1: Add the action here
            }) {
                Text("Take Photo")
            }.padding(30)
        }
    }
}


struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
