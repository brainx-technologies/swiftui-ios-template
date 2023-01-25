//
//  Repo.swift
//  BaseCode
//
//  Created by  on 24/01/2023.
//

import Foundation

class Repo: Codable {

    var id: Int
    var name: String
    var nodeId: String
    var fullName: String

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case nodeId = "node_id"
        case fullName = "full_name"
    }
}
