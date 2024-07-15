//
//  Router.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import SwiftUI

protocol Router {

    func push(_ route: Route)
    func pop()
    func setRoot(_ route: Route)
    
}
