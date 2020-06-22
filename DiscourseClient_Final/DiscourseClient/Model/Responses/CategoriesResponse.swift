//
//  CategoriesResponse.swift
//  DiscourseClient
//
//  Created by Miguel Angel de la Torre on 22/06/2020.
//  Copyright © 2020 Roberto Garrido. All rights reserved.
//

import Foundation

import Foundation

struct CategoriesResponse: Codable {
    let categoryList: CategoryList

    enum CodingKeys: String, CodingKey {
        case categoryList = "category_list"
    }
}

struct CategoryList: Codable {
    let categories: [Category]
}

struct Category: Codable {
    let name: String
}
