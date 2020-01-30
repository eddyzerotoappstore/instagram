//
//  AppView.swift
//  instagram
//
//  Created by Edward Chung on 1/22/20.
//  Copyright © 2020 zerotoappstore. All rights reserved.
//

import SwiftUI
struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            NewPostView()
                .tabItem {
                    Image(systemName: "plus.app")
                }
        }
    }
}
