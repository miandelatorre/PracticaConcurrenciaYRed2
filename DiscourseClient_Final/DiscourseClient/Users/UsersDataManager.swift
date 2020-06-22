//
//  UsersDataManager.swift
//  DiscourseClient
//
//  Created by Miguel Angel de la Torre on 22/06/2020.
//  Copyright © 2020 Roberto Garrido. All rights reserved.
//

import Foundation

protocol UsersDataManager: class {
    func fetchAllUsers(completion: @escaping (Result<UsersResponse?, Error>) -> ())
}
