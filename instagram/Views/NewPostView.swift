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
    @Published var testBool = true
}

struct NewPostView: View {
    @ObservedObject var input = UserInput()
    
    @State private var showingImagePicker = false
    @State private var showingCamera = false
    @State private var showEditPhotoView = false

    @State private var inputImage: UIImage?
    @State private var image: Image?
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.showingImagePicker = true
                }) {
                    Text("Choose Photo")
                }.padding(30)
                Button(action: {
                    self.showingCamera = true
                }) {
                    Text("Take Photo")
                }.padding(30)
            }
            .navigationBarTitle("hello")
            .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                ImagePicker(image: self.$inputImage)
            }
            NavigationLink(destination: Text("hey!"), isActive: $showEditPhotoView) {
                Text("inside navigation link")
            }

        }

    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
        showingImagePicker = false
        showEditPhotoView = true
        // navigate to other view
    }
}


struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
