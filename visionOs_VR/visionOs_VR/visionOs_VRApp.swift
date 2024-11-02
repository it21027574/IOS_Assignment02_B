//
//  visionOs_VRApp.swift
//  visionOs_VR
//
//  Created by vinodi saumya on 2024-11-02.
//

import SwiftUI

@main
struct visionOs_VRApp: App {
    @State var immersionMode: ImmersionStyle = .progressive
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .defaultSize(width: 10,height: 10)
        .windowStyle(.plain)
        //VR
        ImmersiveSpace (id: "ImmersiveView") {
            ImmersiveView()
        }
            .immersionStyle(selection: $immersionMode, in:.progressive)
    }
}
