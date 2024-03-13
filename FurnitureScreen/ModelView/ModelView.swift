//
//  ModelView.swift
//  FurnitureScreen
//
//  Created by Артем Парфенов on 10.03.2024.
//

import Foundation

struct FurnitureScreenModelView {
    var furniture: Furniture

    private func is3dModelExist() -> Bool {
        return furniture.modelName == nil ? false : true
    }

    func getFurnitureModelName() -> String {
        return is3dModelExist() == true ? furniture.modelName! : "defaultObject"
    }

}
