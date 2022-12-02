//
//  StarRatingView.swift
//  Assessment
//
//  Created by Suyog Sawant on 01/12/22.
//

import SwiftUI

struct StarRatingView: View {
    struct ClipShape: Shape {
            let width: Double
            
            func path(in rect: CGRect) -> Path {
                Path(CGRect(x: rect.minX, y: rect.minY, width: width, height: rect.height))
            }
        }
        
        @Binding var rating: Double
        let maxRating: Int
        
        init(rating: Binding<Double>, maxRating: Int) {
            self.maxRating = maxRating
            self._rating = rating
        }
        
        var body: some View {
            HStack(spacing: 0) {
                ForEach(0..<maxRating, id: \.self) { _ in
                    Text(Image(systemName: "star"))
                        .foregroundColor(.black)
                        .font(.title2)
                        .aspectRatio(contentMode: .fill)
                }
            }.overlay(
                GeometryReader { reader in
                    HStack(spacing: 0) {
                        ForEach(0..<maxRating, id: \.self) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.black)
                                .font(.title2)
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    .clipShape(
                        ClipShape(width: (reader.size.width / CGFloat(maxRating)) * CGFloat(rating))
                    )
                }
            )
        }
}

struct StarRatingView_Previews: PreviewProvider {
    static var previews: some View {
        StarRatingView(rating: .constant(1.6), maxRating: 5)
    }
}
