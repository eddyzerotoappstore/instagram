//
//  AddLocationView.swift
//  instagram
//
//  Created by Edward Chung on 3/3/20.
//  Copyright © 2020 zerotoappstore. All rights reserved.
//

import SwiftUI

struct AddLocationView: View {
    @Binding var location: String

    var body: some View {
        VStack {
            TextField("Type a location...", text: $location).padding()
            Spacer()
        }
    }
}

struct AddLocationView_Previews: PreviewProvider {
    static var previews: some View {
        AddLocationView(location: .constant(""))
    }
}
