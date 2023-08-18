//
//  AppError.swift
//  BaseCode
//
//  Created by  on 23/01/2023.
//

import Foundation

class AppError: Codable, LocalizedError {

    var errorDescription: String?

    init(message: String) {
        self.errorDescription = message
    }

    private enum CodingKeys: String, CodingKey {

        case errorDescription = "error"

    }

}
