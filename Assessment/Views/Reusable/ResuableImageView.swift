//
//  ResuableImageView.swift
//  Assessment
//
//  Created by Suyog Sawant on 02/12/22.
//

import SwiftUI

struct ResuableImageView: View {
    var url : String
    var height : CGFloat
    var width : CGFloat
    var body: some View {
        
        NetworkImageLoader(url: URL(string: url)!,placeholder: {
            Image("beer")
                .resizable()
                .frame(width: width, height: height)
                .aspectRatio(contentMode: .fill)
        },image: { Image(uiImage: $0).resizable()})
        .aspectRatio(contentMode: .fit)
        .frame(width: width,height: height)
    }
}

struct ResuableImageView_Previews: PreviewProvider {
    static var previews: some View {
        ResuableImageView(url: "",height: 200,width: 200)
    }
}
