//
//  DetailPage.swift
//  Assessment
//
//  Created by Suyog Sawant on 01/12/22.
//

import SwiftUI

struct DetailPage: View {
    var product: Product
    @EnvironmentObject var products: FavouriteProducts
    var randomFact = RandomFacts.getRandomFacts()
    @StateObject var favouritePageVM = FavouritePageVM()
    
    var body: some View {
        ScrollView{
            VStack(){
                ReuseableImageView(url: product.imageURL, height: 200, width: 200)
                HStack(){
                    Text(product.title)
                        .font(Font.custom(Fonts.name,size: Fonts.largeTitle))
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: favouritePageVM.checkIfFavourite(item: product, storedFavList: products))
                        .font(.system(size: Fonts.largeTitle))
                        .onTapGesture {
                            favouritePageVM.addRemoveFavourite(item: product, storedFavList: products)
                        }
                }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Spacer().frame(height: 10)
                HStack{
                    Text("Brand : \(product.brand)")
                        .font(Font.custom(Fonts.name,size: Fonts.title))
                        .fontWeight(.semibold)
                    Spacer()
                    StarRatingView(rating: .constant(product.ratingCount), maxRating: 5)
                        .accentColor(.red)
                }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Spacer().frame(height: 10)
                HStack{
                    Text("Price   : $\(String(product.productPrice))")
                        .font(Font.custom(Fonts.name,size: Fonts.title))
                        .fontWeight(.semibold)
                }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                Spacer().frame(height: 20)
                
                VStack(alignment: .leading){
                    Text("Random Facts :")
                        .font(Font.custom(Fonts.name,size: Fonts.title))
                        .fontWeight(.semibold)
                    
                    Text(randomFact)
                        .font(Font.custom(Fonts.name,size: Fonts.title))
                        .fontWeight(.semibold)
                    
                }.frame(alignment: .topLeading)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .padding()
                .navigationTitle(product.title)
                .accentColor(.white)
        }
    }
}

struct DetailPage_Previews: PreviewProvider {
    static let mockService = MockApiService()
    static var previews: some View {
        DetailPage(product: mockService.getProduct())
            .environmentObject(FavouriteProducts())
    }
}
