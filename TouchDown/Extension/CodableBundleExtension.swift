//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import Foundation

extension Bundle {
    func decode  <T: Codable> (_ file : String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) in bundle")
        }
        
        return decodedData
    }
    
}
