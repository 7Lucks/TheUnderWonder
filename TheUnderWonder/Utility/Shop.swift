//
//  Shop.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 17.05.2021.
//

import Foundation
class Shop: ObservableObject {
    @Published var shovingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
