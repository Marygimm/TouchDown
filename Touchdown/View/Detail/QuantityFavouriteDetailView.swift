//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Mary Moreira on 21/10/2022.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: - properties
    
    @State private var counter: Int = 0
    
    //MARK: - body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }) {
                Image(systemName: "minus.circle")
            }
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }) {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        } //: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
