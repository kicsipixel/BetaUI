//
//  TextFieldBorder.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

// Common border for all input field with gradient border
struct BUIInputTextFieldBorder: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 5, style: .continuous)
            .stroke(Color.bUIBorderColor, lineWidth: 1)
    }
}
