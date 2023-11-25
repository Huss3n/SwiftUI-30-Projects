//
//  RootView.swift
//  GoodAsOldPhones
//
//  Created by Muktar Hussein on 25/11/2023.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            ProductsView()
                .tabItem {
                    Label("Products", systemImage: "house")
                }
            
            UsView()
                .tabItem {
                    Label("Us", systemImage: "globe")
                }
        }
    }
}

//#Preview {
//    RootView()
//}
