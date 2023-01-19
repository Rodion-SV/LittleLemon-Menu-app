//
//  Little_Lemon_dinner_menuTests.swift
//  Little Lemon dinner menuTests
//
//  Created by Rodion Samoilov on 12/19/22.
//

import XCTest
@testable import Little_Lemon_dinner_menu

final class LittleLemonDinnerMenuTests: XCTestCase {
    func test_menuItem_initWithCorrectTitle() throws {
        let item = CompleteMenu(price: 9, Title: "Test0", MenuCategory: "one", Price: 9, Ingredient: ["test0"])
        let title = item.Title
        XCTAssert(item.Title == title)
    }

    func test_menuItem_initWithCorrectIngredients() throws {
        let item = CompleteMenu(price: 9, Title: "test1", MenuCategory: "test", Price: 9, Ingredient: ["pide", "taco"])
        let title = item.Ingredient

        XCTAssert(item.Ingredient == title)
    }
    func test_blueberryColor_initialize_equalsBlue() {
        let blueberry = Blueberry()
        XCTAssertEqual(blueberry.color, "blue")
    }
    func test_blueberryColor_initialize_equalsBlue1() {
    }
    func test_blueberryColor_initialize_equalsBlue2() {
        let blueberry = Blueberry()
        XCTAssert(blueberry.color == "blue")
    }
    func test_blueberryColor_initialize_equalsBlue3() {
        let blueberry = Blueberry()
        XCTAssert(!blueberry.color.isEmpty)
    }
    func test_calculateTotal_salesTaxTwentyPercent() {
        let items = [CheckoutItem(name: "Chips", price: 49), CheckoutItem(name: "Cola", price: 100), CheckoutItem(name: "Ketchup", price: 400), CheckoutItem(name: "Pizza", price: 982)]
        let taxPercentage = 20
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        print(totalToPay)
        XCTAssertEqual(totalToPay,1837)
    }
    func testExample() {
     let array = [1, 2, 3, 4]
     let sum = array.reduce(0){$0 + $1}
     XCTAssertNotEqual(sum, 9)
    }
}


