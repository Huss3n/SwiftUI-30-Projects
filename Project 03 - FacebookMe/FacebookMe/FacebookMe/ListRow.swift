//
//  ListRow.swift
//  FacebookMe
//
//  Created by Muktar Hussein on 16/12/2023.
//

import SwiftUI

struct ListRow: View {
    var image: String
    var name: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
            Text(name)
        }
    }
}

#Preview {
    ListRow(image: "person.fill", name: "Hussein Aisak")
}
