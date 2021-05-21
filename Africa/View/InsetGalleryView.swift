//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Baptiste on 21/05/2021.
//

import SwiftUI

struct InsetGalleryView: View {
    
    // MARK: - PROPERTIES
    let animals: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15) {
                ForEach(animals.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //: SCROLL
    }
}

// MARK: - PREVIEW
struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animals: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
