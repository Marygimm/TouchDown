//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Mary Moreira on 21/10/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Properties
    
    
    //MARK: - Body
    var body: some View {
        Button(action: {} ) {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(sampleProduct.colorRGB.cgColor!))
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
