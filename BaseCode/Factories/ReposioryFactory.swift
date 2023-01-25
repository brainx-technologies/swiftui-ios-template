//
//  ReposioryFactory.swift
//  BaseCode
//
//  Created by  on 23/01/2023.
//

import Foundation

class RepositoryFactory: ObservableObject {

    private let apiManager: APIManager

    init() {
        let authProvider = AppAuthProvider()
        apiManager = APIManager(authProvider: authProvider)
    }

    func createAuthRepository() -> AuthRepository {
        return AuthRepository(apiManager: apiManager)
    }

}
