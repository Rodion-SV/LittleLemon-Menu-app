//
//  MenuCategory.swift
//  Little Lemon dinner menu
//
//  Created by Rodion Samoilov on 12/19/22.
//

import Foundation

enum menuCategory:String, CaseIterable, Identifiable {
    var id: String {UUID().uuidString}
    case Food = "Food"
    case Drink = "Drink"
    case Dessert = "Dessert"
}
protocol Berry {
    var color: String { get }
}
class Blueberry: Berry {
    let color = "blue"
}

enum SortedCat: String, CaseIterable, Identifiable {
    var id: String {UUID().uuidString}
    case MostPop = "Most Popular"
    case Price = "Price $-$$$"
    case AthruZ = "A-Z"
}
