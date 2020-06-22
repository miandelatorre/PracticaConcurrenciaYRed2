//
//  DeleteTopicRequest.swift
//  DiscourseClient
//
//  Created by Miguel Angel de la Torre on 21/06/2020.
//  Copyright © 2020 Roberto Garrido. All rights reserved.
//

import Foundation

class DeleteTopicRequest: APIRequest {
    typealias Response = DeleteTopicResponse

    let id: Int

    init(id: Int) {
        self.id = id
    }

    var method: Method {
        return .DELETE
    }

    var path: String {
        return "/t/\(id).json"
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
