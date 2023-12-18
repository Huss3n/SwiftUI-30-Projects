//
//  ListVM.swift
//  ToDoTDD
//
//  Created by Muktar Hussein on 18/12/2023.
//

import Foundation
import CoreData

final class ListVM: ObservableObject {
    
    @Published var meetings: [ListModel] = []
    @Published var title: String = ""
    @Published var address: String = ""
    @Published var description: String = ""
    @Published var date: Date = Date()
    
    // handles coredata
    init() {
    }
    
    // uncomment to use without core data
    func addMeeting(){
        let addedMeeting = ListModel(title: title, address: address, desciption: description, date: date)
        meetings.append(addedMeeting)
        resetFields()
    }
    
    func resetFields() {
        title = ""
        address = ""
        description = ""
        date = Date()
    }
     
}




