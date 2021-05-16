//
//  ContentView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 29.04.2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        
        ZStack {
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
                        
                        
                        FooterView()
                            .padding(.horizontal)
                    }// VSTACK
                })//: SCROLL
                
               
            }//: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
        
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
