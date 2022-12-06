//
//  APIService.swift
//  Assessment
//
//  Created by Suyog Sawant on 05/12/22.
//

import Foundation

class ProductsApiService : BaseAPIService {
    
    func fetchData() async -> Products?{
        guard let url = URL(string: URLManager.productUrl) else { return nil}
        
        do {
            let (result,response) = try await URLSession.shared.data(for: URLRequest(url: url))
            guard (response as? HTTPURLResponse)?.statusCode == 200 else { return nil}
            
            return  try JSONDecoder().decode(Products.self, from: result)
        } catch{
            print(error)
            return nil
        }
    }
}
