//
//  AppError.swift
//  BaseCode
//
//  Created by  on 23/01/2023.
//

import Foundation

class AppError: Codable, Error {

    var localizedDescription: String

    init(message: String) {
        self.localizedDescription = message
    }

    private enum CodingKeys: String, CodingKey {

        case localizedDescription = "error"

    }

}
