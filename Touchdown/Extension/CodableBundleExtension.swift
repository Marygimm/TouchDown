//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Mary Moreira on 20/10/2022.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let json = url(forResource: file, withExtension: "json") else { fatalError("Fail to locate \(file) in bundle.")}
        
        guard let data = try? Data(contentsOf: json) else { fatalError("failed to load \(file) from bundle ")}
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else { fatalError("Failed to decode \(file) from bundle")}
        
       return decodedData
    }
}
