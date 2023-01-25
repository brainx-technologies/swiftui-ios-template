//
//  BaseCodeApp.swift
//  BaseCode
//
//  Created by  on 19/01/2023.
//

import SwiftUI

@main
struct BaseCodeApp: App {

    @StateObject var repositoryFactory = RepositoryFactory()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(repositoryFactory)
        }
    }
}
