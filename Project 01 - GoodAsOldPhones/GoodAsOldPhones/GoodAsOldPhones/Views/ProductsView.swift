//
//  ProductsView.swift
//  GoodAsOldPhones
//
//  Created by Muktar Hussein on 25/11/2023.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var productVM: ProductViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(productVM.products){ product in
                    NavigationLink {
                        NavView(name: product.name, navImage: product.navigatedImage)
                    } label: {
                        ItemRow(productImage: product.productImage, productName: product.name)
                    }
                }
            }
        }
    }
}

#Preview {
    ProductsView()
        .environmentObject(ProductViewModel())
}
