//
//  CategoryActivity .swift
//  Tests
//
//  Created by apprenant48 on 27/10/2022.
//

import Foundation
struct CategoryActivity: Identifiable {
    var id = UUID()
    var name: String
    var images: [ImageOneActivity]
}
