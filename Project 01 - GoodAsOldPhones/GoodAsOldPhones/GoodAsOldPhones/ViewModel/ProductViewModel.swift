//
//  ProductViewModel.swift
//  GoodAsOldPhones
//
//  Created by Muktar Hussein on 25/11/2023.
//

import Foundation


class ProductViewModel: ObservableObject {
    @Published var products: [Products] = []
    
    init() {
        addProducts()
    }
    
    func addProducts() {
        self.products = [
            Products(name: "1907 Wall Set", productImage: "image-cell1", navigatedImage: "phone-fullscreen1"),
            Products(name: "1921 Dial Phone", productImage: "image-cell2", navigatedImage: "phone-fullscreen2"),
            Products(name: "1937 Desk Set", productImage: "image-cell3", navigatedImage: "phone-fullscreen3"),
            Products(name: "1984 Moto Portable", productImage: "image-cell4", navigatedImage: "phone-fullscreen4")
        ]
    }
}
