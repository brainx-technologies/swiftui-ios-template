//
//  RoutingModifiers.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import SwiftUI

struct RoutingModifier: ViewModifier {

    @ObservedObject var router: AppRouter

    func body(content: Content) -> some View {
        NavigationStack(path: $router.path) {
            content
                .navigationDestination(for: Route.self) { route in
                    route.view
                }
        }
    }
}

extension View {

    func routed(by router: AppRouter) -> some View {
        modifier(RoutingModifier(router: router))
    }

}


