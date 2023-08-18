//
//  AppRouter.swift
//  BaseCode
//
//  Created by  on 07/08/2023.
//

import SwiftUI

class AppRouter: Router, ObservableObject {

    @Published var paths = [Route]()

    func append(_ route: Route) {
        paths.append(route)
    }

    func pop() {
        guard !paths.isEmpty else {
            return
        }
        paths.removeLast()
    }

    func setRoot(_ route: Route) {
        paths = [route]
    }
}
