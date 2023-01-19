//
//  MenuViewViewModel.swift
//  Little Lemon dinner menu
//
//  Created by Rodion Samoilov on 12/21/22.
//

import SwiftUI

protocol MenuItem {
    var id: UUID {get}
    var price: Double {get}
    var Title: String {get}
    var MenuCategory: String {get}
    var Price: Int {set get}
    var Ingredient: [String] {set get}
    var selectedItem: String {set get}
}

class MenuViewViewModel: ObservableObject {
    @Published var selectedItem: String = ""
  
    
    let menuAll: [CompleteMenu] = [
        CompleteMenu(price: 99.99, Title: "Pide", MenuCategory: "Food", Price: 9999, Ingredient: ["Fresh made pide", "Your choice of toppings"]),
        CompleteMenu(price: 88.88, Title: "Macaroni", MenuCategory: "Food", Price: 8888, Ingredient: ["Fresh made macaroni", "Homemade sauce, with or without meat"]),
        CompleteMenu(price: 77.77, Title: "Pasta", MenuCategory: "Food", Price: 7777, Ingredient: ["Fresh made pasta", "Homemade sauce"]),
        CompleteMenu(price: 66.66, Title: "Salad", MenuCategory: "Food", Price: 6666, Ingredient: ["Cucumber", "Tomato", "Onion", "Bell Peppars"]),
        CompleteMenu(price: 55.55, Title: "Veggie Plate", MenuCategory: "Food", Price: 5555, Ingredient: ["Sesaonal Veggies", "Choice of sauces"]),
        CompleteMenu(price: 44.44, Title: "Meat Plate", MenuCategory: "Food", Price: 4444, Ingredient: ["Chef's Choice Cut", "As you like it"]),
        CompleteMenu(price: 33.33, Title: "Avacado Dip", MenuCategory: "Food", Price: 3333, Ingredient: ["Avacado", "Seasonal Veggies"]),
        CompleteMenu(price: 22.22, Title: "Sandwich", MenuCategory: "Food", Price: 2222, Ingredient: ["Mexico","Flaming hot"]),
        CompleteMenu(price: 10.99, Title: "Fruit", MenuCategory: "Food", Price: 1099, Ingredient: ["Seasonal Fruit", "Ketchup"]),
        CompleteMenu(price: 10.99, Title: "Fish", MenuCategory: "Food", Price: 1099, Ingredient: ["Fish","Seasonal Veggies"]),
        CompleteMenu(price: 5.99, Title: "Soup", MenuCategory: "Food", Price: 599, Ingredient: ["Meat","Or Without Meat", "Veggies"]),
        CompleteMenu(price: 12.99, Title: "Appetizers", MenuCategory: "Food", Price: 1299, Ingredient: ["Choose six small plates","Your choice!"]),

        CompleteMenu(price: 10.99, Title: "Beer", MenuCategory: "Drink", Price: 1099, Ingredient: ["Brewed onsite"]),
        CompleteMenu(price: 10.99, Title: "Wine", MenuCategory: "Drink", Price: 1099, Ingredient: ["Grapes from Italy"]),
        CompleteMenu(price: 4.99, Title: "Tea", MenuCategory: "Drink", Price: 499, Ingredient: ["Leaves grown onsite"]),
        CompleteMenu(price: 3.99, Title: "Almond Milk", MenuCategory: "Drink", Price: 399, Ingredient: ["Pressed onsite"]),
        CompleteMenu(price: 9.99, Title: "Water", MenuCategory: "Drink", Price: 999, Ingredient: ["Water from Lourdes"]),
        CompleteMenu(price: 3.99, Title: "Lemonade", MenuCategory: "Drink", Price: 399, Ingredient: ["Lemons"]),
        CompleteMenu(price: 3.99, Title: "Soda Pop", MenuCategory: "Drink", Price: 399, Ingredient: ["Carb water & syrup"]),
        CompleteMenu(price: 2.99, Title: "Coffee", MenuCategory: "Drink", Price: 299, Ingredient: ["Kona Coffee Beans"]),
        
        CompleteMenu(price: 1.99, Title: "Chocolate Cake", MenuCategory: "Dessert", Price: 199, Ingredient: ["Made fresh each day"]),
        CompleteMenu(price: 2.99, Title: "Lemoncello cake", MenuCategory: "Dessert", Price: 299, Ingredient: ["Lemons grown by farmers", "fresh ingredients"]),
        CompleteMenu(price: 4.99, Title: "Gelato", MenuCategory: "Dessert", Price: 499, Ingredient: ["Made fresh each day"]),
        CompleteMenu(price: 4.99, Title: "Tiramisu", MenuCategory: "Dessert", Price: 499, Ingredient: ["With or without Alcohol"])

    ]

    let foodItems: [MenuItems] = [
        MenuItems(title: "Pide", ingredients: ["Fresh made pide", "Your choice of toppings"]),
        MenuItems(title: "Macaroni", ingredients: ["Fresh made macaroni", "Homemade sauce, with or without meat"]),
        MenuItems(title: "Pasta", ingredients: ["Fresh made pasta", "Homemade sauce"]),
        MenuItems(title: "Salad", ingredients: ["Lettuce", "Tomato", "Onion", "Bell Peppars", "Kale"]),
        MenuItems(title: "Veggie Plate", ingredients: ["Seasonal Veggies", "Choice of sauces"]),
        MenuItems(title: "Meat Plate", ingredients: ["Chef's Choice Cut", "As you like it"]),
        MenuItems(title: "Avacado Dip", ingredients: ["Avacado", "Seasonal Veggies"]),
        MenuItems(title: "Sandwich", ingredients: ["Mexico","Whole Grain FlatBread"]),
        MenuItems(title: "Fruit", ingredients: ["Sesaonal Fruit", "Balsamic Vinegar"]),
        MenuItems(title: "Fish", ingredients: ["Fish","Seasonal Veggies"]),
        MenuItems(title: "Soup", ingredients: ["Meat","Or Without Meat", "Veggies"]),
        MenuItems(title: "Appetizers", ingredients: ["Choose six small plates","Your choice!"])
    ]

    let drinkItems: [MenuItems] = [
        MenuItems(title: "Beer", ingredients: ["Brewed onsite"]),
        MenuItems(title: "Wine", ingredients: ["Grapes from Italy"]),
        MenuItems(title: "Tea", ingredients: ["Leaves grown onsite"]),
        MenuItems(title: "Almond Milk", ingredients: ["Pressed onsite"]),
        MenuItems(title: "Water", ingredients: ["Water from Lourdes"]),
        MenuItems(title: "Lemonade", ingredients: ["Lemons"]),
        MenuItems(title: "Soda Pop", ingredients: ["Carb water & syrup"]),
        MenuItems(title: "Coffee", ingredients: ["Kona Coffee Beans"])
    ]

    let dessertItems: [MenuItems] = [
        MenuItems(title: "Chocolate Cake", ingredients: ["Made fresh each day"]),
        MenuItems(title: "Lemoncello cake", ingredients: ["Lemons grown onsite", "fresh ingredients"]),
        MenuItems(title: "Gelato", ingredients: ["Made fresh each day"]),
        MenuItems(title: "Tiramisu", ingredients: ["With or without Alcohol"])
    ]

    
}
class Menu: MenuItem, ObservableObject {
 
    var selectedItem: String = ""
    var id = UUID()
    var price: Double = 0.0
    var Title: String = ""
    var MenuCategory: String = ""
    var Price: Int = 0
    var Ingredient: [String] = []

}
struct CompleteMenu: Identifiable {
    var id = UUID()
    var price: Double
    var Title: String
    var MenuCategory: String
    var Price: Int
    var Ingredient: [String] = NSObject() as! [String]
}

struct MenuItems: Identifiable {
    var id = UUID()
    var title: String
    var ingredients: [String]
}
