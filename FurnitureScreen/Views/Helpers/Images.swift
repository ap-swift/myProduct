//
//  Images.swift
//  FurnitureScreen
//
//  Created by Артем Парфенов on 12.03.2024.
//

import SwiftUI

struct ImagesHorizontalScrollView: View {
    var images: [String]?

    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                if let images = images {
                    ForEach(images, id: \.self) { imageName in
                        NavigationLink(destination: ImageDetailView(imageName: imageName)) {
                            Image(imageName)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
            }
        }
    }
}

struct ImageDetailView: View {
    var imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .navigationBarTitle(Text(imageName), displayMode: .inline)
    }
}
