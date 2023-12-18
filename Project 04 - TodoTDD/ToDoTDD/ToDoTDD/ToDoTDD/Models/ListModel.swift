//
//  ListModel.swift
//  ToDoTDD
//
//  Created by Muktar Hussein on 18/12/2023.
//

import Foundation


struct ListModel: Identifiable {
    let id: String
    let title: String
    let address: String
    let desciption: String
    let date: Date
    
    
    init(id: String = UUID().uuidString, title: String, address: String, desciption: String, date: Date) {
        self.id = id
        self.title = title
        self.address = address
        self.desciption = desciption
        self.date = date
    }
}
