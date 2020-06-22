//
//  UsersRequest.swift
//  DiscourseClient
//
//  Created by Miguel Angel de la Torre on 22/06/2020.
//  Copyright © 2020 Roberto Garrido. All rights reserved.
//

import Foundation


class UsersRequest: APIRequest {
    typealias Response = UsersResponse

    var method: Method {
        return .GET
    }

    var path: String {
        return "/directory_items.json"
    }

    var parameters: [String : String] {
        return ["period": "all"]
    }

    var body: [String : Any] {
        return [:]
    }

    var headers: [String : String] {
        return [:]
    }
}
