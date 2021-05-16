//
//  FeaturedTabView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 16.05.2021.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(dollsPromo){dollsPromo in
                FeaturedItemView (dollsPromo: dollsPromo)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
            
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iphone 12 pro")
            .background(Color.gray)
    }
}
