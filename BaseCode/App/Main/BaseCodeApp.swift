//
//  BaseCodeApp.swift
//  BaseCode
//
//  Created by  on 19/01/2023.
//

import SwiftUI
import SwiftDI

@main
struct BaseCodeApp: App {

    @StateObject var router = AppRouter()

    var body: some Scene {
        WindowGroup {
            ContentView(router: router)
                .onAppear {
                    registerDependencies()
                }
        }
    }

    func registerDependencies() {
        Resolver.default.register(type: Router.self) {
            router
        }
    }
}
