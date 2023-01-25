//
//  AuthRepository.swift
//  BaseCode
//
//  Created by  on 23/01/2023.
//

import APIManager
import Alamofire
import Foundation

class AuthRepository: Repository {

    private enum Request: APIRequest {

        case login

        var method: HTTPMethod {
            .post
        }

        var endpoint: URL? {
            // stored in Endpoints.swift
            URL(string: "some endpoint")
        }

    }

    func login() async throws {
        
    }
}
