//
//  MenuItemsOptionView.swift
//  Little Lemon dinner menu
//
//  Created by Rodion Samoilov on 12/20/22.
//

import SwiftUI
struct MenuItemsOptionView: View {
    var body: some View {
        NavigationView {
            List{
                Section {
                    ForEach(menuCategory.allCases) { item in
                        NavigationLink(destination: MenuItemsView()) {
                            Text(item.rawValue)}
                                }
                }
                header: {
                    Text("Selected Categories")
                }
                
                Section {
                    ForEach(SortedCat.allCases) { item in
                        NavigationLink(destination: MenuItemsView()) {
                            Text(item.rawValue)}
                    }
                }
                header: {Text("Sort by...")}
           
            }
             
            .navigationTitle("Filter")
        }
      
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
