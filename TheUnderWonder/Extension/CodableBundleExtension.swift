//
//  CodableBundleExtension.swift
//  TheUnderWonder
//
//  Created by Дмитрий Игнатьев on 16.05.2021.
//

import UIKit
extension Bundle{
    func decode<T: Codable>(_ file:String) -> T {
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Fale to locate \(file) in a bundle.")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Fale to load \(file) from a bundle.")
        }
        
        // 3. Create decoder
        let decoder = JSONDecoder()
        // 4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Fale to decode \(file) from a bundle.")
        }
        // 5. Return the ready-to-use data
        return decodedData
    }
}
