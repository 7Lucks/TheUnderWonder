//
//  HeaderDetailView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 17.05.2021.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPERTY
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Handmade doll")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//: VSTACK
        .foregroundColor(.white)
    }
}
//MARK: - PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
