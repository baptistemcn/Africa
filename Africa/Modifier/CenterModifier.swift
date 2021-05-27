//
//  CenterModifier.swift
//  Africa
//
//  Created by Baptiste on 27/05/2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
