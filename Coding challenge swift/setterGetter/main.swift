//
//  main.swift
//  Coding challenge swift
//
//  Created by Achmad Fathullah on 23/06/22.
//

import Foundation

public class Product {
    public var name: String? = nil
    private var _quantity: Int = 0
    public var quantity: Int{
        set {
            if newValue < 1 {
                _quantity = 1
            }else{
                _quantity = newValue
            }
            
        }
        get {
            _quantity
        }
    }
    
    public init(quantity: Int) {
        self.quantity = quantity;
    }
}

let prod = Product(quantity: 1)
prod.quantity = 0
print(prod.quantity) // should print 1
