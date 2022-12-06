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
    
    let apiService: BaseAPIService
    
    init(apiService: BaseAPIService) {
        self.apiService = apiService
    }
    
    func fetchProducts() async {
        let data = await apiService.fetchData()
        if let products = data?.products
        {
            DispatchQueue.main.async {
                self.products = products
                self.isLoading = false
            }
        }
    }
}
