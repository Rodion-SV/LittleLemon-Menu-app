//
//  MenuItemsView.swift
//  Little Lemon dinner menu
//
//  Created by Rodion Samoilov on 12/19/22.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var isShowing: Bool = false
    @State private var isActive: Bool = true
    var body: some View {
        //Adding navigation title and button with that view
        NavigationStack {
            MainView(selectedItem: "", ing: [""])
            //this is how is implemented OptionView link in the header
                .toolbar {
                    ToolbarItem(placement:
                            .navigationBarTrailing) {
                                Button(action: {
                                    isShowing = true
                                }, label: {
                                    Image(systemName: "slider.horizontal.3")
                                })
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .sheet(isPresented: $isShowing
                                       , content: {
                                    MenuItemsOptionView()
                                })
                            }
                }
                .navigationTitle("Menu")
        }
    }
}

struct MainView: View {
    @State var menuViewViewModel = MenuViewViewModel()
    @State var selectedItem: String
    @State var ing: [String]
    var columns = [
    GridItem(alignment: .top),
    GridItem(alignment: .top),
    GridItem(alignment: .top)
    ]
    var body: some View {
        NavigationView{
            ScrollView() {
                VStack(alignment: .leading) {
                    Text("Food")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    LazyVGrid(columns: columns, alignment: .center, spacing: 10) {
                        Section() {
                            ForEach(0..<menuViewViewModel.foodItems.count) { i in
                                NavigationLink( destination: MenuItemDetailsView(selectedItem: menuViewViewModel.foodItems[i].title, ing: menuViewViewModel.foodItems[i].ingredients), label:  {
                                    VStack {
                                        Rectangle()
                                            .foregroundColor(.black)
                                            .scaledToFit()

                                        Text(menuViewViewModel.foodItems[i].title)
                                            .foregroundColor(.black)
                                    }
                                    .padding()
                                })
                            }
                        }
                    }
                    Text("Drink")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    LazyVGrid(columns: columns, spacing: 25) {
                        Section() {
                            ForEach(0..<menuViewViewModel.drinkItems.count) { i in
                                NavigationLink( destination: MenuItemDetailsView(selectedItem: menuViewViewModel.drinkItems[i].title, ing: menuViewViewModel.drinkItems[i].ingredients), label:  {
                                VStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .scaledToFit()

                                    Text(menuViewViewModel.drinkItems[i].title)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                })
                            }
                        }
                    }
                    Text("Dessert")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    LazyVGrid(columns: columns, spacing: 25) {
                        Section() {
                            ForEach(0..<menuViewViewModel.dessertItems.count) { i in
                                NavigationLink( destination: MenuItemDetailsView(selectedItem: menuViewViewModel.dessertItems[i].title, ing: menuViewViewModel.dessertItems[i].ingredients), label:  {
                                VStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .scaledToFit()
                                    Text(menuViewViewModel.dessertItems[i].title)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                })
                            }
                        }
                    }
                }
            }
        }
    }
}



struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
