//
//  BUISecureTextField.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

struct BUISecureTextField: View {
    
    
    @Binding var password: String
    let placeholder: String
    let keyboardType: UIKeyboardType
    let sfSymbol: String!
    
    let textLeading: CGFloat = 30
    
    var body: some View {
        SecureField(placeholder, text: $password)
            .foregroundColor(.bUISecureTextFieldColor)
            .frame(maxWidth: .infinity, minHeight: 44)
            .padding(.leading, textLeading)
            .keyboardType(keyboardType)
            .autocapitalization(.none)
            .disableAutocorrection(true)
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

struct BUISecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        BUISecureTextField(password: .constant("*******"), placeholder: "Secret password", keyboardType: .default, sfSymbol: "key")
            .preview(with: "Secure text field")
    }
}
