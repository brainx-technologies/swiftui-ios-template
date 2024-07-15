//
//  BindingModifier.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import SwiftUI

struct BindingModifier<T: ViewModel>: ViewModifier {

    @ObservedObject var viewModel: T

    func body(content: Content) -> some View {
        content
            .error($viewModel.error)
            .alert(message: $viewModel.alert)
    }
}

extension View {

    func bind<T: ViewModel>(to viewModel: T) -> some View {
        modifier(BindingModifier(viewModel: viewModel))
    }

}

