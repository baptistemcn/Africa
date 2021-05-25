//
//  GalleryView.swift
//  Africa
//
//  Created by Baptiste on 25/05/2021.
//

import SwiftUI

struct GalleryView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        } //: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
