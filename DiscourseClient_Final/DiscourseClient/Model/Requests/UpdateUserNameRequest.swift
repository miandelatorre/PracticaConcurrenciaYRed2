//
//  UpdateUserNameRequest.swift
//  DiscourseClient
//
//  Created by Miguel Angel de la Torre on 22/06/2020.
//  Copyright © 2020 Roberto Garrido. All rights reserved.
//


import Foundation


class UpdateUserNameRequest: APIRequest {
    typealias Response = UpdateUserNameResponse

    let username: String
    let name: String

    init(username: String, name: String) {
        self.username = username
        self.name = name
    }

    var method: Method {
        return .PUT
    }

    var path: String {
        return "/users/\(username)"
    }

    var parameters: [String : String] {
        return [:]
    }

    var body: [String : Any] {
        return ["name": name]
    }

    var headers: [String : String] {
        return [:]
    }
}
