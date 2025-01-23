//
//  ContentView.swift
//  simple-cart
//
//  Created by Maulana Ahmad Zahiri on 23/01/25.
//

import SwiftUI

struct CartItem: Identifiable {
    let id = UUID()
    let name: String
    let price: Int
    let quantity: Int
}

struct ContentView: View {
    let items: [CartItem] = [
        CartItem(name: "Mini Pie", price: 10000, quantity: 2),
        CartItem(name: "Chocolate Cake", price: 25000, quantity: 1),
        CartItem(name: "Cheesecake", price: 30000, quantity: 3),
        CartItem(name: "Cheesecake", price: 30000, quantity: 3),
        CartItem(name: "Cheesecake", price: 30000, quantity: 3),
        CartItem(name: "Cheesecake", price: 30000, quantity: 3),
        CartItem(name: "Cheesecake", price: 30000, quantity: 3),
        CartItem(name: "Cheesecake", price: 30000, quantity: 3),
    ]
    
    var totalPrice : Int {
        items.reduce(0) { $0 + $1.price * $1.quantity}
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            // Header
            HStack(spacing: 4) {
                Image(systemName: "cart")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Cart")
                    .font(.headline)
                Spacer()
            }
            .padding(.bottom, 16)
            
            // Daftar item di keranjang
            ForEach(items) { item in
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("Rp.\(item.price)")
                    }
                    Text("X\(item.quantity)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 4)
            }
            // Total Harga
            Divider()
                .padding(.vertical, 8)
            HStack {
                Text("Total")
                    .font(.headline)
                Spacer()
                Text("Rp.\(totalPrice)")
                    .font(.headline)
                    .foregroundColor(.green)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
