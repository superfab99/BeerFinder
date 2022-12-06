//
//  HomePage.swift
//  Assessment
//
//  Created by Suyog Sawant on 01/12/22.
//

import SwiftUI

struct HomePage: View {
    var apiService : BaseAPIService
    
    init(){
        apiService = ProductsApiService()
    }
    var body: some View {
        TabView{
            ListingPage(apiService: apiService).tabItem {
                Label("Products",systemImage: "calendar")
            }
            FavouritePage().tabItem {
                Label("Favourites",systemImage: "star")
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
