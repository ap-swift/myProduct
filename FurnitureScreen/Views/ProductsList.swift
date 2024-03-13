//
//  ProductsList.swift
//  FurnitureScreen
//
//  Created by Артем Парфенов on 10.03.2024.
//

import SwiftUI

struct ProductsList: View {
    @Environment(ModelData.self) var modelData

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.furnitures) {
                    item in
                    NavigationLink {
                        FurnitureScreen(item: item)
                    } label: {
                        ScrollView {
                            HStack {
                                Text("\(item.name)")
                            }
                        }
                    }
                }
            }
            .navigationTitle("Our products")
        } detail: {
            Text("Select a product")
        }
    }

}


#Preview {
    ProductsList()
        .environment(ModelData())
}
