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
    @State var description: String = ""
    @State var location: String = ""

    var body: some View {
        VStack {
            HStack {
                input.selectedImage.map({
                    Image(uiImage:$0)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    }).frame(width: 80, height: 80).clipped().padding()
                
                TextField("Write a caption...", text: $description)
            }
            
            Text(location).padding()
            NavigationLink(destination: AddLocationView(location: $location)) {
                Text("Change Location")
            }
            Spacer()
        }.navigationBarTitle("Edit Post")
    }
}

struct EditPostView_Previews: PreviewProvider {
    static var previews: some View {
        let input = UserInput()
        input.selectedImage = UIImage(named: "bananas")
        return EditPostView(input: input)
    }
}
