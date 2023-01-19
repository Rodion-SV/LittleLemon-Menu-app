//
//  MenuItemDetailsView.swift
//  Little Lemon dinner menu
//
//  Created by Rodion Samoilov on 12/19/22.
//

import SwiftUI

struct MenuItemDetailsView: View {
    @State var menuViewViewModel = MenuViewViewModel()
    @State var selectedItem: String
    @State var ing: [String]
    var body: some View {
        NavigationView {
            VStack {
                Image("Little Lemon logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 300)
                
                Text("Price")
                    .font(.title2)
                    .fontWeight(.semibold)
                ForEach(menuViewViewModel.menuAll) {item in
                    if selectedItem == item.Title {
                        let price = String(format: "%.2f", item.price)
                        Text("$\(price)")
                    }
                }
                
                Text("Ordered")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("1000")
                
                Text("Ingredients")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("Tasty")
                ForEach(ing, id:\.self) { i in
                    Text(i)
                }

                Spacer()
            }
            .navigationTitle(selectedItem)
        }
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
                MenuItemDetailsView(selectedItem: "Pide", ing: [""])
    }
}
