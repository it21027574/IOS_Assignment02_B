//
//  ContentView.swift
//  visionOs_VR
//
//  Created by vinodi saumya on 2024-11-02.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImersiveSpace
    var body: some View {
        VStack {
            Button {
                //Do something
            } label: {
                Image(systemName: "visonpro")
            }

        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
