//
//  MockDataService.swift
//  Assessment
//
//  Created by Suyog Sawant on 05/12/22.
//

import Foundation

class MockApiService : BaseAPIService{
    
    func fetchData() -> Products? {
        let product = Products(products: [
            Product(title: "Diamond Label Shiraz", id: "1", imageURL: "https://media.danmurphys.com.au/dmo/product/23124-1.png?impolicy=PROD_SM", price: [Price(value: 9.40, isOfferPrice: false)], brand: "Rosemount", ratingCount: 4.0),
            Product(title: "Shiraz", id: "2", imageURL: "https://media.danmurphys.com.au/dmo/product/144469-1.png?impolicy=PROD_SM", price: [Price(value: 11.40, isOfferPrice: false)], brand: "Pepperjack", ratingCount: 3.3)])
        
        return product
    }
    
    func getProduct() -> Product {
        return Product(title: "Diamond Label Shiraz", id: "1", imageURL: "https://media.danmurphys.com.au/dmo/product/23124-1.png?impolicy=PROD_SM", price: [Price(value: 9.40, isOfferPrice: false)], brand: "Rosemount", ratingCount: 4.0)
    }
}
