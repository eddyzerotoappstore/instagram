//
//  EditPostView.swift
//  instagram
//
//  Created by Edward Chung on 1/30/20.
//  Copyright © 2020 zerotoappstore. All rights reserved.
//

import SwiftUI

struct EditPostView: View {
    @ObservedObject var input: UserInput
    
    var body: some View {
        VStack {
            input.selectedImage.map({
                Image(uiImage:$0)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            })
        }
    }
}
