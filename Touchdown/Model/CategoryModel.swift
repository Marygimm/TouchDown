//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Mary Moreira on 20/10/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
