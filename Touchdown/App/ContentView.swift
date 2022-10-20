//
//  ContentView.swift
//  Touchdown
//
//  Created by Mary Moreira on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    
    //MARK: - Body
    var body: some View {
       FooterView()
            .padding(.horizontal)
    }
}
    //MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
