//
//  Product.swift
//  Assessment
//
//  Created by Suyog Sawant on 30/11/22.
//

import Foundation
import Foundation

struct Products: Codable {
    let products: [Product]
}

struct Product: Codable,Identifiable {
    let title, id: String
    let imageURL: String
    let price: [Price]
    let brand: String
    let ratingCount: Double
    
    var productPrice : Double{
        get{
            price.first?.value ?? 0.0
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case title, id, imageURL, price, brand, ratingCount
    }
}

struct Price: Codable {
    let value: Double
    let isOfferPrice: Bool
}
