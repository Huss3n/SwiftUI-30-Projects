//
//  NavView.swift
//  GoodAsOldPhones
//
//  Created by Muktar Hussein on 25/11/2023.
//

import SwiftUI

struct NavView: View {
    let name: String?
    let navImage: String?
    
    var body: some View {
        VStack {
            Text(name ?? "No name")
                .font(.title)
            
            // add to cart image
            Button(action: {
                print("Added to cart succesfully")
            }, label: {
                Image("button-addtocart")
            })
            
                Image(navImage ?? "person")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
            
        }
        .padding()
    }
}

#Preview {
    NavView(name: "1907 Wall Set", navImage: "phone-fullscreen1")
}
