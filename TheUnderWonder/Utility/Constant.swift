//
//  Constant.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 15.05.2021.
//

//For Swift global constants, to collect colours, fonts, images, strings, url's

import SwiftUI

//DATA

let dollsPromo: [DollPromo] = Bundle.main.decode("dolls.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]

//COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//LAYOUT

let columnSpacing: CGFloat =  10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem]{
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX

let feedback = UIImpactFeedbackGenerator(style: .medium)
//API
//IMAGE
//FONT
//STRING
//MISC

