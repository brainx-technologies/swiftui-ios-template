//
//  Route.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import SwiftUI

enum Route {

    case splash

    @ViewBuilder
    var view: some View {
        switch self {
        case .splash:
            SplashView()
        }
    }

}
