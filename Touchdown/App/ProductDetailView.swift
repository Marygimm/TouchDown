//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Mary Moreira on 20/10/2022.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.window?.safeAreaInsets.top)

            //HEADER
            
            HeaderDetailView()
                .padding(.horizontal)
                        
            //DETAIL TOP PART
            
            TopPartDetailView()
                .padding(.horizontal)
            
            //DETAIL BOTTOM PART
            
            //RATINGS + SIZES
            
            //DESCRIPTIONS
            
            //QUANTITY + FAVOURITE
            
            // ADD TO CART
             Spacer()
            
        } //: VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(sampleProduct.colorRGB).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
