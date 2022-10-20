//
//  Constant.swift
//  Touchdown
//
//  Created by Mary Moreira on 20/10/2022.
//

import SwiftUI

//DATA
let players: [Player] = Bundle.main.decode("player")

let categories: [Category] = Bundle.main.decode("category")

//COLOR
let colorBackground: Color = Color("ColorBackground")

let colorGray: Color = Color(UIColor.systemGray)

//LAYOUT

let columnSpacing: CGFloat = 10

let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
//UX
//API
//IMAGE
//FONT
//STRING
