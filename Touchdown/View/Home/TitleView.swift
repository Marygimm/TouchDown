//
//  TitleView.swift
//  Touchdown
//
//  Created by Mary Moreira on 20/10/2022.
//

import SwiftUI

struct TitleView: View {
    //MARK: - Properties
    
    var title: String
    //MARK: - body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        } //: Stack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
