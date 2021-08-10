//
//  Textstyle.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

struct BUIHeaderTextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundColor(.bUIHeaderTextColor)
    }
}

struct BUIFootnoteTextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(.bUIFootnoteTextColor)
    }
}
