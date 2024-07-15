//
//  SplashView.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import SwiftUI

struct SplashView: View {

    @StateObject private var viewModel = SplashViewModel()

    var body: some View {
        VStack {
            Text("Splash")
        }
        .bind(to: viewModel)
    }
}
