//
//  Login.swift
//  BaseCode
//
//  Created by  on 23/01/2023.
//

import SwiftUI

struct Login: View {

    @ObservedObject var viewModel: LoginViewModel

    var body: some View {
        ZStack {
            Button("Tap Me") {
                viewModel.performAPIRequest()
            }

            if viewModel.isLoading {
                ProgressView()
            }
        }
    }

}

struct Login_Previews: PreviewProvider {

    static var previews: some View {
        let repo = RepositoryFactory().createAuthRepository()
        let viewModel = LoginViewModel(repository: repo)
        Login(viewModel: viewModel)
    }
}
