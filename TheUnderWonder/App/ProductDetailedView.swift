//
//  ProductDetailedView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 17.05.2021.
//

import SwiftUI

struct ProductDetailedView: View {
    //MARK: - PROPERTY
    //MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding()
                .zIndex(1) // layer priority (1)
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                // RATING + SIZES
                RatingSizesDetailedView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content:{
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//:SCROLL
                
                //QUANTITY + FAVORITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // ADD TO CART
                AddToCartDetailedView()
                    .padding(.bottom, 20)
            })//:VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })//:VSTACK
        .zIndex(0) // layer priority (0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}
//MARK: - PREVIEW
struct ProductDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailedView()
            .previewLayout(.fixed(width: 375, height: 812))
        
    }
}
