//
//  GoodAsOldPhonesApp.swift
//  GoodAsOldPhones
//
//  Created by Muktar Hussein on 25/11/2023.
//

import SwiftUI

@main
struct GoodAsOldPhonesApp: App {
    @StateObject private var productsVM = ProductViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(productsVM)
        }
    }
}
