//
//  InputTextField.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

struct BUIInputTextField: View {
    
    @Binding var text: String
    let placeholder: String
    let keyboardType: UIKeyboardType
    let sfSymbol: String?
    private let textLeading: CGFloat = 30
    
    
    var body: some View {
        TextField(placeholder, text: $text)
            .foregroundColor(.bUIInputTextFieldColor)
            .frame(maxWidth: .infinity, minHeight: 44)
            .padding(.leading, sfSymbol == nil ? textLeading / 2 : textLeading)
            .keyboardType(keyboardType)
            .background(
                ZStack(alignment: .leading) {
                    if let systemImage = sfSymbol {
                        Image(systemName: systemImage)
                            .opacity(0.3)
                            .padding(.horizontal, 5)
                    }
                    
                    BUIInputTextFieldBorder()
                }
            )
    }
}

struct InputTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BUIInputTextField(text: .constant(""), placeholder: "E-mail address", keyboardType: .emailAddress, sfSymbol: "envelope")
                .preview(with: "Text input with symbol")
            
            BUIInputTextField(text: .constant(""), placeholder: "First name", keyboardType: .default, sfSymbol: nil)
                .preview(with: "Text input without symbol")
        }
    }
}
