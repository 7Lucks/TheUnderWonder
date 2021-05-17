//
//  TheUnderWonderApp.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 29.04.2021.
//

import SwiftUI

@main
struct TheUnderWonderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
