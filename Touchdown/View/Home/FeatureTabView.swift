//
//  FeatureTabView.swift
//  Touchdown
//
//  Created by Mary Moreira on 20/10/2022.
//

import SwiftUI

struct FeatureTabView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeatureItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //:Tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            .background(Color.gray)
            
    }
}
