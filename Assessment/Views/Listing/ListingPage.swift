//
//  ListingPage.swift
//  Assessment
//
//  Created by Suyog Sawant on 30/11/22.
//

import SwiftUI

struct ListingPage: View {
    @StateObject var listingVM = ListingPageVM()
    @StateObject var products = FavouriteProducts()
    
    var body: some View {
        NavigationView{
            ZStack{
                List{
                    ForEach(listingVM.products){ product in
                            ProductCell(product: product)
                                .background( NavigationLink("", destination: DetailPage(product: product)).opacity(0))
                    }
                }.navigationTitle("Products")
                
                if listingVM.isLoading{
                    ProgressView()
                }
            }.onAppear{
                Task{
                    if(listingVM.products.count == 0){
                        await listingVM.fetchProducts()
                    }
                }
            }
        }
    }
}

struct ListingPage_Previews: PreviewProvider {
    static var previews: some View {
        ListingPage()
    }
}
