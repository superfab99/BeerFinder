//
//  FavouritePage.swift
//  Assessment
//
//  Created by Suyog Sawant on 30/11/22.
//

import SwiftUI

struct FavouritePage: View {
    @EnvironmentObject var products: FavouriteProducts
    
    var body: some View {
        NavigationView{
            ZStack{
                List(products.products){ item in
                        ProductCell(product: item)
                        .background( NavigationLink("", destination: DetailPage(product: item)).opacity(0))
                }
                
                if(products.products.count == 0){
                    VStack{
                        Image(systemName: "heart")
                            .font(.largeTitle)
                        Spacer().frame(height: 10)
                        Text("Your favourite list is empty")
                    }
                    
                }
            }.navigationTitle("Favourites")
        }
    }
}

struct FavouritePage_Previews: PreviewProvider {
    static var previews: some View {
        FavouritePage()
    }
}
