//
//  File.swift
//  BaseCode
//
//  Created by  on 16/08/2023.
//

import SwiftUI

protocol BindableView: View {

    associatedtype ViewModelType: ViewModel

    var viewModel: ViewModelType { get set }

    init(viewModel: ViewModelType)
}

struct ViewBinder<Content: BindableView>: View {

    @StateObject var viewModel: Content.ViewModelType

    init(viewModel: Content.ViewModelType) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        ZStack {
            Content(viewModel: viewModel)

            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(.circular)
            }

        }
        .alert(error: $viewModel.error)

    }
}
