//
//  FirebaseDataController.swift
//  instagram
//
//  Created by Edward Chung on 1/17/20.
//  Copyright © 2020 zerotoappstore. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore

class FirebaseSession: ObservableObject {
    @Published var posts: [Post] = []

    private var listener: ListenerRegistration?
    
    var query: Query = Firestore.firestore().collection("posts").limit(to: 50)
    var db = Firestore.firestore()
    
    func getPosts() {
        listener?.remove()
        self.listener = self.query.addSnapshotListener { [unowned self] (snapshot, error) in
            guard let snapshot = snapshot else {
                print("Error fetching snapshot results: \(error!)")
                return
            }
            let models = snapshot.documents.map { (document) -> Post? in
                return Post(id: document.documentID, dict: document.data())
            }
            self.posts = models.compactMap { $0 }
        }
    }
    
    private func savePost(description: String, location: String, imageUrl: String) {
        db.collection("posts").document().setData([
            "description": description,
            "location": location,
            "imageUrl": imageUrl
        ]) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
    }
    
    func upload(image: UIImage, description: String, location: String) {
        let storageRef = Storage.storage().reference().child("images/\(UUID().uuidString).jpg")
        guard let data = image.jpegData(compressionQuality: 0.8) as NSData? else { return }
        _ = storageRef.putData(data as Data, metadata: nil) { (metadata, error) in
          storageRef.downloadURL { (url, error) in
            guard let downloadURL = url else {
              print("error getting download url")
              return
            }
            print(downloadURL)
            self.savePost(description: description, location: location, imageUrl: downloadURL.absoluteString)
          }
        }
    }
}
