//
//  AppRouter.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import SwiftUI

class AppRouter: Router, ObservableObject {

    @Published var path = [Route]()
    @Published var root: Route

    init(root: Route) {
        self.root = root
    }

    func push(_ route: Route) {
        path.append(route)
    }

    func pop() {
        guard !path.isEmpty else {
            return
        }
        path.removeLast()
    }

    func setRoot(_ route: Route) {
        path = []
        root = route
    }

}
