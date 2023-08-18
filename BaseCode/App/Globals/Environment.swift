//
//  Environment.swift
//  BaseCode
//
//  Created by  on 19/01/2023.
//

import Foundation

enum Environment {

    case development
    case staging
    case production

    static var current: Environment { .development }

    var baseUrl: URL? {
        switch self {
        case .development:
            return URL(string: "dev_url")
        case .staging:
            return URL(string: "staging_url")
        case .production:
            return URL(string: "production_url")
        }
    }

}
