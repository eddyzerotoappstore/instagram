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
}
