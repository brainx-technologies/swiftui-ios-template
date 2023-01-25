//
//  LoginViewModel.swift
//  BaseCode
//
//  Created by  on 23/01/2023.
//

import SwiftUI

@MainActor
class LoginViewModel: ObservableObject {

    private var repository: AuthRepository

    @Published var isLoading: Bool = false
    @Published var error: Error?

    init(repository: AuthRepository) {
        self.repository = repository
    }

    func performAPIRequest() {
        isLoading = true

        Task {
            try? repository.login
        }
    }

}
