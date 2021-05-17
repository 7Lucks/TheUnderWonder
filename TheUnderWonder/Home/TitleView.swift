//
//  TitleView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 17.05.2021.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTY
    var title: String
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}
//MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Doll")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
