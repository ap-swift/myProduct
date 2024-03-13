//
//  Model.swift
//  FurnitureScreen
//
//  Created by Артем Парфенов on 08.03.2024.
//

import Foundation
import SwiftUI


struct Furniture: Codable, Hashable, Identifiable {

    var id: Int
    let article: Int
    let name: String
    var category: String
    var delivery: Bool
    var colors: Set<String>
    var oldPrice: String
    var price: String
    let imagesNames: [String]?
    var description: String
    let modelName: String?

}
