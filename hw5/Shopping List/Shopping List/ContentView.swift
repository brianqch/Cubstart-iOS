//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    
    let imageName: String
    
    let itemName: String
    
    let quantity: Int
    
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
}

struct ContentView: View {
    
    var fruitList = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4)
        ]
    
    var vegetableList = [
        Items(imageName: "broccoli", itemName: "Broccoli", quantity: 2),
        Items(imageName: "spinach", itemName: "Spinach", quantity: 1),
        ]
    
    var dairyList = [
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12),
        Items(imageName: "milk", itemName: "Milk", quantity: 1),
        Items(imageName: "butter", itemName: "Butter", quantity: 1)
        
        ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                        ForEach(fruitList) {i in
                            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Vegetables")) {
                        ForEach(vegetableList) {i in
                            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                        }
                    }
                Section(header: Text("Dairy")) {
                        ForEach(dairyList) {i in
                            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                        }
                    }
                }
                .navigationTitle("Shopping List")
            }
        }
    }
