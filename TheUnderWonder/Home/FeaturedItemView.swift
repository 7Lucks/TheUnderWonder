//
//  FeaturedItemView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 16.05.2021.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTY
    let dollsPromo: DollPromo
    //MARK: - BODY
    var body: some View {
        Image(dollsPromo.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}
//MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(dollsPromo: dollsPromo[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
