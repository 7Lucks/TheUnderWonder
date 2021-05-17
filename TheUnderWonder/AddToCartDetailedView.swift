//
//  AddToCartDetailedView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 17.05.2021.
//

import SwiftUI

struct AddToCartDetailedView: View {
    //MARK: - PROPERTY
    //MARK: - BODY
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//: Add to cart BUTTON
        .padding(15)
        .background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}
//MARK: - PREVIEW
struct AddToCartDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailedView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
