//
//  ListRow.swift
//  ToDoTDD
//
//  Created by Muktar Hussein on 18/12/2023.
//

import SwiftUI

struct ListRow: View {    
    var dateFormater: DateFormatter {
        let formater = DateFormatter()
        formater.dateStyle = .medium // original is to be .short
        formater.timeStyle = .none
        return formater
    }
    
    
    var title: String
    var address: String
    var date: Date
    
    var body: some View {
        HStack(spacing: 20) {
            Text(title)
            Text(address)
                .lineLimit(3)
            Text(dateFormater.string(from: date))
        }
        .font(.headline)
        .fontWeight(.semibold)
    }
}


struct ListRow_Preciew: PreviewProvider {
    static var previews: some View {
        ListRow(title: dev.meeting.title, address: dev.meeting.address, date: dev.meeting.date)
    }
}
