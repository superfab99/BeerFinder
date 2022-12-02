//
//  HomePage.swift
//  Assessment
//
//  Created by Suyog Sawant on 01/12/22.
//

import SwiftUI

struct HomePage: View {
    init(){
        configureNavBar()
    }
    var body: some View {
        TabView{
            ListingPage().tabItem {
                Label("Products",systemImage: "calendar")
            }
            FavouritePage().tabItem {
                Label("Favourites",systemImage: "star")
            }
        }
    }
    
    func configureNavBar(){
            let navBarAppearance = UINavigationBarAppearance()
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().compactAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
