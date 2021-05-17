//
//  ContentView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 29.04.2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        
        ZStack {
            if shop.shovingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0){
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top) //on iPhones without notches and wit it will work the same
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .padding(.vertical, 20)
                                .frame(width: 400, height: 300)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Doll")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products){product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.shovingProduct = true
                                                
                                            }
                                        }
                                } //: LOOP
                            })//:GRID
                            .padding(15)
                            
                            //MARK: - Add materials
                            // TitleView(title: "Brands") add title
                            //BrandGridView() add brands
                            
                            FooterView()
                                .padding(.horizontal)
                        }// VSTACK
                    })//: SCROLL
                    
                    
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailedView()
            }
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
        
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iphone 12 Pro")
            .environmentObject(Shop())
    }
}
