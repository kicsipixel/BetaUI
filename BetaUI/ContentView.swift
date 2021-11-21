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
                        .modifier(BUIHeaderTextStyle())
                    Text(".modifier(HeaderText())")
                        .modifier(BUIFootnoteTextStyle())
                }
                .padding()
                Spacer()
            }
            
            VStack(alignment: .trailing) {
                BUIInputTextField(text: $text, placeholder: "Textfiled without image", keyboardType: .default, sfSymbol: nil)
                Text("BUIInputTextField()")
                    .modifier(BUIFootnoteTextStyle())
            }
            .padding()
            
            VStack(alignment: .trailing) {
                BUIInputTextField(text: $textWithIcon, placeholder: "Textfiled with image", keyboardType: .emailAddress, sfSymbol: "envelope")
                Text("BUIInputTextField() with SFSymbol")
                    .modifier(BUIFootnoteTextStyle())
            }
            .padding()
            
            VStack(alignment: .trailing) {
                BUISecureTextField(password: $password, placeholder: "Secure textfield with icon", keyboardType: .default, sfSymbol: "lock")
                Text("BUISecureTextField() with SFSymbol")
                    .modifier(BUIFootnoteTextStyle())
            }
            .padding()
            
            VStack(alignment: .trailing) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("BetaUI Button 1")
                })
                .modifier(BUIDefaultButtonStyle())
                Text("BUIDefaultButtonStyle()")
                    .modifier(BUIFootnoteTextStyle())
            }
            .padding()
            
            
            VStack(alignment: .trailing) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("BetaUI Button 2")
                })
                .modifier(BUIInverseButtonStyle())
                Text("BUIInverseButtonStyle()")
                    .modifier(BUIFootnoteTextStyle())
            }
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
