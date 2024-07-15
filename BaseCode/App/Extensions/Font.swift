//
//  Font.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import SwiftUI

extension Font.Weight {

    var name: String {
        switch self {
        case .black:
            return "Black"
        case .bold:
            return "Bold"
        case .heavy:
            return "Heavy"
        case .semibold:
            return "SemiBold"
        case .medium:
            return "Medium"
        case .regular:
            return "Regular"
        case .thin:
            return "Thin"
        case .light:
            return "Light"
        case .ultraLight:
            return "UltraLight"
        default:
            return ""

        }
    }
}

extension Font {

    static func current(weight: Font.Weight, size: CGFloat) -> Font {
        .custom(Environment.current.fontFamily + "-" + weight.name, size: size)
    }

}

