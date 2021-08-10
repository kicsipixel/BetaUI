//
//  Textstyle.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

struct BUIHeaderText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundColor(.bUIHeaderTextColor)
    }
}

struct BUIFootnoteText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(.bUIFootnoteTextColor)
    }
}
