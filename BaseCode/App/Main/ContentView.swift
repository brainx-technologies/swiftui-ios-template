//
//  ContentView.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import SwiftUI
import SwiftDI

struct ContentView: View {

    @StateObject private var router: AppRouter

    init() {
        let router = AppRouter(root: .splash)
        Resolver.default.register(type: Router.self, factory: { router })
        self._router = StateObject(wrappedValue: router)
    }

    var body: some View {
        Group {
            router.root.view
                .routed(by: router)
        }
    }
}

#Preview {
    ContentView()
}
