//
//  ProductLayout.swift
//  FurnitureScreen
//
//  Created by Артем Парфенов on 08.03.2024.
//

import SwiftUI
import SceneKit


struct Furniture3D: View {
    var objectName: String

    var body: some View {

        VStack(alignment: .center, content: {
            if objectName == "defaultObject" {
                Text("There's no object 3D model")
            } else {
                SceneView(scene: SCNScene(named: objectName), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 4)
                Spacer()
            }

        })
    }

}

#Preview {
    Furniture3D(objectName: "ChairObject.scn")
}
