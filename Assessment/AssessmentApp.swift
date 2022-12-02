//
//  AssessmentApp.swift
//  Assessment
//
//  Created by Suyog Sawant on 30/11/22.
//

import SwiftUI

@main
struct AssessmentApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var favouriteData : FavouriteProducts
    
    init() {
       _favouriteData = StateObject(wrappedValue: FavouriteProducts())
    }
    
    var body: some Scene {
        WindowGroup {
            SplashScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(favouriteData)
        }
    }
}
