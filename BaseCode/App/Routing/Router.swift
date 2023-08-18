//
//  Router.swift
//  BaseCode
//
//  Created by  on 02/08/2023.
//

import Foundation

protocol Router {

    func append(_ route: Route)
    func pop()
    func setRoot(_ route: Route)

}
