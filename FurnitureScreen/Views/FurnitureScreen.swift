//
//  ContentView.swift
//  FurnitureScreen
//
//  Created by Артем Парфенов on 08.03.2024.
//

import SwiftUI

struct FurnitureScreen: View {
    var item: Furniture

    var furnitureScreenModelView: FurnitureScreenModelView {
           FurnitureScreenModelView(furniture: item)
    }

    var body: some View {
        ScrollView {
            VStack {
                Furniture3D(objectName: furnitureScreenModelView.getFurnitureModelName())
                Text("Name: \(item.name)")
                    .font(.title) // устанавливаем шрифт заголовка
                    .fontWeight(.bold) // устанавливаем полужирное начертание
                    .foregroundColor(.blue) // устанавливаем синий цвет текста
                    .padding() // добавляем отступы
                    .background(Color.yellow) // устанавливаем желтый фон
                    .cornerRadius(10) // закругляем углы
                    .padding() // добавляем еще отступы
                HStack {
                    Text("Article: \(String(item.article))")
                        .foregroundColor(.brown)
                    Spacer()
                    Text("Category: \(item.category)")
                        .foregroundColor(.brown)
                }

                let isDelivery = item.delivery == true ? Image(systemName: "checkmark") : Image(systemName: "xmark")
                Text("Delivery: \(isDelivery)")
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)

                HStack(content: {
                    let colors = Array(item.colors)
                    Text("Available colors: ")
                        .foregroundColor(.green)
                        Spacer()
                    ForEach(colors, id: \.self) { color in
                        Text(color)
                            .foregroundColor(.green)
                    }
                })

                HStack(content: {
                    Spacer() // Располагает элементы вправо
                    Text("New price \(item.price)")
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10) // закругляем углы
                        .lineLimit(1)
                    Text("Old price \(item.oldPrice)")
                        .strikethrough(true, color: .red)
                        .font(.system(size: 12))
                })
                .padding()

                ImagesHorizontalScrollView(images: item.imagesNames)

                Text("Description: \(item.description)")
                    .font(.body) // устанавливаем шрифт текста
                    .foregroundColor(.green) // устанавливаем красный цвет текста
                    .padding() // добавляем отступы
            }
            .navigationTitle(item.name)
            .frame(width: UIScreen.main.bounds.width - 40)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FurnitureScreen(item: ModelData().furnitures[0])
}
