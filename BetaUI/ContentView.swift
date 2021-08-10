//
//  ContentView.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    @State var textWithIcon: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .trailing) {
                    Text("Showcase")
                        .modifier(BUIHeaderText())
                    Text(".modifier(HeaderText())")
                        .modifier(BUIFootnoteText())
                }
                .padding()
                Spacer()
            }
            BUIInputTextField(text: $text, placeholder: "Textfiled without image", keyboardType: .default, sfSymbol: nil)
                .padding()
            
            BUIInputTextField(text: $textWithIcon, placeholder: "Textfiled with image", keyboardType: .default, sfSymbol: "envelope")
                .padding()
            
            BUISecureTextField(password: $password, placeholder: "Secure textfield with icon", keyboardType: .default, sfSymbol: "lock")
                .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
