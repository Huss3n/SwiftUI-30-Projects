//
//  SaveMeetings.swift
//  ToDoTDD
//
//  Created by Muktar Hussein on 18/12/2023.
//


// MARK: Use this view model for coredata storage


import Foundation
import CoreData

class SaveMeetings: ObservableObject {
    @Published var savedMeetings: [MeetingsEntity] = []
    @Published var title: String = ""
    @Published var address: String = ""
    @Published var description: String = ""
    @Published var date: Date = Date()
    
    let container: NSPersistentContainer
    
    
    init() {
        container = NSPersistentContainer(name: "Meetings")
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Error loading container \(error.localizedDescription)")
            }
        }
        fetchMeetings()
    }
    
    func fetchMeetings() {
        let requst = NSFetchRequest<MeetingsEntity>(entityName: "MeetingsEntity")
        do {
            savedMeetings = try  container.viewContext.fetch(requst)
        } catch let error {
            print("Error fetching data \(error.localizedDescription)")
        }
    }
    
    
    // add to coredata
    func addToCoredata() {
        let entity = MeetingsEntity(context: container.viewContext)
        entity.title = title
        entity.address = address
        entity.meetingDescription = description
        entity.date = date
        
        saveToCoredata()
        resetFields()
    }
    
    // reset fields
    func resetFields() {
        title = ""
        address = ""
        description = ""
        date = Date()
    }
    
    // save
    func saveToCoredata() {
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error saving \(error)")
        }
    }
    
    
}
