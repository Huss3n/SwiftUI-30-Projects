//
//  Products.swift
//  GoodAsOldPhones
//
//  Created by Muktar Hussein on 25/11/2023.
//

import Foundation

struct Products: Identifiable {
    var id = UUID().uuidString
    let name: String?
    let productImage: String?
    let navigatedImage: String?
}

