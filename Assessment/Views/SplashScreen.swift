//
//  SplashScreen.swift
//  Assessment
//
//  Created by Suyog Sawant on 01/12/22.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            HomePage()
        }
        else{
            ZStack{
                VStack{
                     Image("beer")
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                    
                    Spacer().frame(height: 20)
                    
                    Text("Beer Buddy")
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                    
                    Spacer().frame(height: 10)
                    
                    Text("Explore, Drink, Repeat!!!")
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                }.scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
            }.ignoresSafeArea()
                .onAppear(){
                    DispatchQueue.main.asyncAfter(deadline: .now()+2.0) {
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
