//
//  BUIButtonStyle.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

struct BUIDefaultButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .font(.body.bold())
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.bUIButtonTextColor)
            .background(LinearGradient(gradient: Gradient(colors: [Color.bUIButtonBaseColor1.opacity(0.9), Color.bUIButtonBaseColor1.opacity(0.75)]), startPoint: .top, endPoint: .trailing))
            .cornerRadius(7)
            .overlay(
                RoundedRectangle(cornerRadius: 5, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .stroke(Color.bUIButtonBaseColor1, lineWidth: 2)
            )
    }
}


struct BUIInverseButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .font(.body.bold())
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.bUIInverseButtonTextColor)
            .cornerRadius(7)
            .overlay(
                RoundedRectangle(cornerRadius: 5, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .stroke(Color.bUIButtonBaseColor1, lineWidth: 2)
            )
        
    }
}
