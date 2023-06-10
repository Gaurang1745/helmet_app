//
//  Shop.swift
//  TouchDown
//
//  Created by Gaurang on 5/20/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct : Bool = false
    @Published var selectedProduct : Product? = nil
}
