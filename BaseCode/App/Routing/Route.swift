//
//  Route.swift
//  BaseCode
//
//  Created by  on 02/08/2023.
//

import SwiftUI

enum Route {
    
    case splash

    @ViewBuilder var view: some View {
        switch self {
        case .splash:
            ViewBinder<SplashView>(viewModel: SplashViewModel())
        }
    }

}
