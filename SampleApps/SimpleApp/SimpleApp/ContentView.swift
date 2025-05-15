//
//  ContentView.swift
//  SimpleApp
//
//  Created by Yasuhito Nagatomo on 2025/05/15.
//

import SwiftUI
import RealityKit
import RealityKitContent
import FileIO
import DisplayData

struct ContentView: View {

    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world!")

            ToggleImmersiveSpaceButton()
        }
        .padding()
    }

    func test() {
        let fileIO = FileIO()
        fileIO.doSomething()
        let displayData = DisplayData()
        displayData.doSomething()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
