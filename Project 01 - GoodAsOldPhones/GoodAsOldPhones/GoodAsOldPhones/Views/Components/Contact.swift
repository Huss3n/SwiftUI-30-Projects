//
//  Contact.swift
//  GoodAsOldPhones
//
//  Created by Muktar Hussein on 25/11/2023.
//

import SwiftUI

struct Contact: View {
    let imageName: String?
    let contactText: String?
    
    
    var body: some View {
        HStack {
            Image(imageName ?? "person")
            Text(contactText ?? "No info")
        }
    }
}

#Preview {
    Contact(imageName: "icon-about-email", contactText: "goog-as-old@exmple.email.com")
}
