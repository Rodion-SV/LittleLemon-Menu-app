//
//  Checkout-Tests.swift
//  Little Lemon dinner menu
//
//  Created by Rodion Samoilov on 1/18/23.
//

//Useless lines to implement testing.
struct CheckoutItem {
    let name: String
    let price: Int
}

func calculateTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    let itemsTotal = items.reduce(0) { $0 + $1.price }
    let taxAmount = itemsTotal * localTaxPercent / 100
    return itemsTotal + taxAmount
}

