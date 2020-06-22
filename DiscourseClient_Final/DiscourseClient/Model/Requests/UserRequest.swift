//
//  UserRequest.swift
//  DiscourseClient
//
//  Created by Miguel Angel de la Torre on 22/06/2020.
//  Copyright © 2020 Roberto Garrido. All rights reserved.
//


import Foundation


class UserRequest: APIRequest {
    typealias Response = UserResponse

    let username: String

    init(username: String) {
        self.username = username
    }

    var method: Method {
        return .GET
    }

    var path: String {
        return "/users/\(username).json"
    }

    var parameters: [String : String] {
        return [:]
    }

    var body: [String : Any] {
        return [:]
    }

    var headers: [String : String] {
        return [:]
    }
}
