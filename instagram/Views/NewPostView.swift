//
//  NewPostView.swift
//  instagram
//
//  Created by Edward Chung on 1/22/20.
//  Copyright © 2020 zerotoappstore. All rights reserved.
//

import SwiftUI

class UserInput: ObservableObject {
    @Published var selectedImage: UIImage?
}

struct NewPostView: View {
    @ObservedObject var input = UserInput()
    @State private var showingImagePicker = false
    @State private var showEditPhotoView = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.showingImagePicker = true
                }) {
                    Text("Choose Photo")
                }.padding(30)
                
                NavigationLink(destination: EditPostView(input: input), isActive: $showEditPhotoView) {
                    EmptyView()
                }.onAppear(perform: {
                    self.showEditPhotoView = false
                })
            }
            .navigationBarTitle("Select Photo")
            .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                ImagePicker(image: self.$input.selectedImage)
            }
        }
    }
    
    func loadImage() {
        if input.selectedImage != nil {
            showingImagePicker = false
            showEditPhotoView = true
        }
    }
}


struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
