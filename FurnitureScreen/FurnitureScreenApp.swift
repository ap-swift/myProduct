//
//  FurnitureScreenApp.swift
//  FurnitureScreen
//
//  Created by Артем Парфенов on 08.03.2024.
//

import SwiftUI

@main
struct FurnitureScreenApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ProductsList()
                .environment(modelData)
        }
    }
}
