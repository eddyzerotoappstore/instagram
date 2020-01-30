//
//  NewPostView.swift
//  instagram
//
//  Created by Edward Chung on 1/22/20.
//  Copyright © 2020 zerotoappstore. All rights reserved.
//

import SwiftUI


struct NewPostView: View {
    @State private var showingImagePicker = false
    @State private var showingCamera = false

    @State private var inputImage: UIImage?
    @State private var image: Image?

    var body: some View {
        NavigationView {
            VStack {
                Button(action: openImagePicker) {
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
            .sheet(isPresented: $showingCamera, onDismiss: loadImage) {
                ImagePicker(image: self.$inputImage)
            }
        }

    }
    
    func openImagePicker() {
        self.showingImagePicker = true
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
        showingImagePicker = false
    }
}


struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
