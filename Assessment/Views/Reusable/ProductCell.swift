//
//  ProductCell.swift
//  Assessment
//
//  Created by Suyog Sawant on 01/12/22.
//

import SwiftUI

struct ProductCell: View {
    @EnvironmentObject var products: FavouriteProducts
    @StateObject var favouritePageVM = FavouritePageVM()
    
    var product : Product
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                ReuseableImageView(url: product.imageURL, height: 100, width: 100)

                VStack(alignment: .leading, spacing: 5){
                    Text(product.title)
                        .font(Font.custom(Fonts.name,size: Fonts.title))
                        .fontWeight(.bold)
                    
                    Text("$\(String(product.productPrice))")
                        .font(Font.custom(Fonts.name,size: Fonts.body))
                        .fontWeight(.semibold)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 15){
                    Image(systemName: favouritePageVM.checkIfFavourite(item: product, storedFavList: products))
                        .font(.system(size: Fonts.largeTitle))
                        .onTapGesture {
                            favouritePageVM.addRemoveFavourite(item: product, storedFavList: products)
                        }
                    Image(systemName:"cart.badge.plus")
                        .font(.system(size: Fonts.largeTitle))
                    
                }
            }.frame(minWidth: 0, maxWidth: .infinity,minHeight: 0,maxHeight:.infinity ,alignment: .leading)
        }
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        //ProductCell()
        Text("Preview")
    }
}
