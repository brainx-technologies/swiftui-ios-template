//
//  AppAuthProvider.swift
//  BaseCode
//
//  Created by  on 23/01/2023.
//

import APIManager
import Alamofire
import Foundation

class AppAuthProvider: AuthProvider {

    func authenticationHeader() async -> HTTPHeader {
        HTTPHeader(name: "Authorization", value: "Bearer token")
    }

}
