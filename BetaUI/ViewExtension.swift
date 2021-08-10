//
//  Helper.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

// PreviewLayoutModifier
struct PreviewLayoutModifier: ViewModifier {

    let title: String

    func body(content: Content) -> some View {
        content
            .previewLayout(.sizeThatFits)
            .previewDisplayName(title)
            .padding()
    }
}

extension View {
    func preview(with title: String) -> some View {
        self.modifier(PreviewLayoutModifier(title: title))
    }
}
