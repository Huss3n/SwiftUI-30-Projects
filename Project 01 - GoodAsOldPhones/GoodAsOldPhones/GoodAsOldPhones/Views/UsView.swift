//
//  UsView.swift
//  GoodAsOldPhones
//
//  Created by Muktar Hussein on 25/11/2023.
//

import SwiftUI

struct UsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("header-contact")
                
                Text("About Us")
                    .font(.title.bold())
                
                VStack(alignment: .leading, spacing: 40) {
                    Text("Good as Old Phones returns the phones of yesteryear back to their original glory and then gets them into the hands* of those who appreciate them most:")
                    
                    Text("Whether you are looking for a turn-of-the-century wall set or a Zack Morris Special, We've got you covered. Give us a ring and we will get you connected.")
                    
                    Text("*Hands-free phones available")
                        .fontDesign(.serif)
                }
                .multilineTextAlignment(.leading)
                .padding(50)
                
               Text("Contact US")
                    .font(.title.bold())
                VStack(alignment:.leading, spacing: 20) {
                   Contact(imageName: "icon-about-email", contactText: "good-as-old@example.com")
                    Contact(imageName: "icon-about-phone", contactText: "412-888-9028")
                    Contact(imageName: "icon-about-website", contactText: "www.example.com")
                }
                
            }
        }
    }
}

#Preview {
    UsView()
}
