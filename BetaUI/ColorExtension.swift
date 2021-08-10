//
//  ColorExtension.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

extension Color {
    //FIXME: Dark mode is not handled
    //MARK: Font color
    static let bUIHeaderTextColor = bUIOrange
    static let bUIFootnoteTextColor = bUICream
    
    //MARK: Border color
    static let bUIBorderColor = bUIOrange
    
    // Converting hex string to Color
    // Usage: Color(hexString: "your_hex_string")
    // https://stackoverflow.com/questions/24263007/how-to-use-hex-color-values/24263296
    // by Thomas Paul (https://stackoverflow.com/users/5235481/thomas-paul)
    
    init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        switch hex.count {
        case 3:
            (r, g, b) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (r, g, b) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (r, g, b) = (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (r, g, b) = (255, 0, 0)
        }
        self.init(red: Double(CGFloat(r)) / 255, green: Double(CGFloat(g)) / 255, blue: Double(CGFloat(b)) / 255)
    }
    
}
