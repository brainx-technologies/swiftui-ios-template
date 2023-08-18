//
//  ContentView.swift
//  BaseCode
//
//  Created by  on 19/01/2023.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var router: AppRouter

    var body: some View {
        RoutingView(router: router) {
            ViewBinder<SplashView>(viewModel: SplashViewModel())
        }
    }
}
