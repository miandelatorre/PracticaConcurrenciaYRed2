//
//  CategoryCellViewModel.swift
//  DiscourseClient
//
//  Created by Miguel Angel de la Torre on 22/06/2020.
//  Copyright © 2020 Roberto Garrido. All rights reserved.
//

import Foundation

import Foundation

class CategoryCellViewModel {
    let category: Category
    let textLabelText: String?

    init(category: Category) {
        self.category = category
        textLabelText = category.name
    }
}
