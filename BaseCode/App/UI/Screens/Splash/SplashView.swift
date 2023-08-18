//
//  SplashView.swift
//  BaseCode
//
//  Created by  on 16/08/2023.
//

import SwiftUI

class SplashViewModel: ViewModel {

}

struct SplashView: BindableView {

    @ObservedObject var viewModel: SplashViewModel

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

