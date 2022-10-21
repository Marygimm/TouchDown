//
//  Shop.swift
//  Touchdown
//
//  Created by Mary Moreira on 21/10/2022.
//

import Foundation

class Shop: ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: Product? = nil
}
