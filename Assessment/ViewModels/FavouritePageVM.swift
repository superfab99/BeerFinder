//
//  FavouritePageVM.swift
//  Assessment
//
//  Created by Suyog Sawant on 02/12/22.
//

import Foundation
class FavouritePageVM : ObservableObject {
    
    func addRemoveFavourite(item : Product, storedFavList: FavouriteProducts){
        let result = storedFavList.products.firstIndex { p in
            return p.id == item.id
        }
        
        if let result = result {
            storedFavList.products.remove(at: result)
        }else{
            storedFavList.products.append(item)
        }
    }
    
    func checkIfFavourite(item: Product,storedFavList: FavouriteProducts) -> String{
        let result = storedFavList.products.first { p in
            return p.id == item.id
        }
        
        return result != nil ? "heart.fill" : "heart"
    }
}
