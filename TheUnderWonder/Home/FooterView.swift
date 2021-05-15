//
//  FooterView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 15.05.2021.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Text("In my 'TheUnderWonder' store you can buy high quality handmade dolls. Inside each doll is a piece of my soul.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .resizable()
                .frame(width: 100, height: 65)
                .layoutPriority(/*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            Text("TheUnderWonder © Inna Ihnatieva \n All right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
            
        
        } //: VSTACK
        .padding()
        
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
