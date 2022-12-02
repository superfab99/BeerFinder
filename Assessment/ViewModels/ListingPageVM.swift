//
//  ListingPageVM.swift
//  Assessment
//
//  Created by Suyog Sawant on 30/11/22.
//

import Foundation
class ListingPageVM: ObservableObject {
    @Published var products : [Product] = []
    @Published var isLoading = true
    private var baseUrl = "https://run.mocky.io/v3/2f06b453-8375-43cf-861a-06e95a951328";
    
    func fetchProducts() async {
        guard let url = URL(string: baseUrl) else { return }
      
        do {
            let (result,urlResponse) = try await URLSession.shared.data(for: URLRequest(url: url))
            let data = try JSONDecoder().decode(Products.self, from: result)
            DispatchQueue.main.async {
                self.products = data.products
                self.isLoading = false
            }
        } catch{
            print(error)
        }
        
    }
}
