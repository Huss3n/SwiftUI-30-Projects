//
//  ToDoTDDApp.swift
//  ToDoTDD
//
//  Created by Muktar Hussein on 18/12/2023.
//

import SwiftUI

@main
struct ToDoTDDApp: App {
    @StateObject var vm = ListVM()
    
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(vm)
        }
    }
}
