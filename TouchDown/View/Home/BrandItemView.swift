//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Gaurang on 5/20/23.
//

import SwiftUI

struct BrandItemView: View {
    var brand : Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}