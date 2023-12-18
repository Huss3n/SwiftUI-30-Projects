//
//  PreviewProvider.swift
//  ToDoTDD
//
//  Created by Muktar Hussein on 18/12/2023.
//

import Foundation
import SwiftUI


extension PreviewProvider {
    static var dev: MeetingsPreview {
        return MeetingsPreview.instance
    }
}

class MeetingsPreview {
    static let instance = MeetingsPreview()
    private init() { }
    
    let meeting = ListModel(title: "Meeting", address: "Home office", desciption: "Be on time", date: Date())
}
