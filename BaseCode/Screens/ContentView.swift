//
//  ContentView.swift
//  BaseCode
//
//  Created by  on 19/01/2023.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var repositoryFactory: RepositoryFactory

    var body: some View {
        let repo = repositoryFactory.createAuthRepository()
        Login(viewModel: LoginViewModel(repository: repo))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
