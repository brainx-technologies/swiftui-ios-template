//
//  AppError.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import Foundation

struct AppError: LocalizedError {

    var errorDescription: String?

    init(message: String) {
        errorDescription = message
    }

    init?(error: Error?) {
        guard let error else {
            return nil
        }

        errorDescription = error.localizedDescription
    }

}
