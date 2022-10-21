//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Mary Moreira on 20/10/2022.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
          // NAVBAR
          NavigationBarDetailView()
            .padding(.horizontal)
            .padding(.top, UIApplication.shared.window?.safeAreaInsets.top)

          // HEADER
          HeaderDetailView()
            .padding(.horizontal)
          
          // DETAIL TOP PART
          TopPartDetailView()
            .padding(.horizontal)
            .zIndex(1)
          
          // DETAIL BOTTOM PART
          VStack(alignment: .center, spacing: 0, content: {
            // RATINGS + SIZES
            RatingsSizesDetailView()
              .padding(.top, -20)
              .padding(.bottom, 20)
            
            // DESCRIPTION
            ScrollView(.vertical, showsIndicators: false, content: {
                Text(shop.selectedProduct?.description ?? sampleProduct.description)
                .font(.system(.body, design: .rounded))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
                
            }) //: SCROLL
            
            // QUANTITY + FAVOURITE
              
            QuantityFavouriteDetailView()
                  .padding(.vertical, 10)
            // ADD TO CART
              
              AddToCartDetailView()
                  .padding(.bottom, 20)

          }) //: VSTACK
          .padding(.horizontal)
          .background(
            Color.white
              .clipShape(CustomShape())
              .padding(.top, -105)
          )
        }) //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(shop.selectedProduct?.colorRGB ?? sampleProduct.colorRGB)
        .ignoresSafeArea(.all, edges: .all)
    }
}
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
