//
//  ItemRow.swift
//  GoodAsOldPhones
//
//  Created by Muktar Hussein on 25/11/2023.
//

import SwiftUI

struct ItemRow: View {
    let productImage: String?
    let productName: String?
    
    var body: some View {
        HStack {
            Image(productImage ?? "")
            Text(productName ?? "")
        }
    }
}

#Preview {
    ItemRow(productImage: "image-cell1", productName: "1907 Wall Set")
}
