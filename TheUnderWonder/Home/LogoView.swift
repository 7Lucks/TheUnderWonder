//
//  LogoView.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 16.05.2021.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4){
            Text(" The under".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("wonder".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
        }//: HSTACK
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
