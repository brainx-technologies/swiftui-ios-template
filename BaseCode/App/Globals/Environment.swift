//
//  Environment.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import Foundation

enum Environment {

    case development

    static var current: Environment { .development }

    var baseUrl: URL {
        URL(string: "https://google.com")!
    }

    var fontFamily: String {
        "HelveticaNue"
    }

}
