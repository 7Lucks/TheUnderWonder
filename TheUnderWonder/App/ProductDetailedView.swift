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
            
            // DETAIL BOTTOM PART
            // RATING + SIZES
            //DESCRIPTION
            //QUANTITY + FAVORITE
            // ADD TO CART
            Spacer()
        })//:VSTACK
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
