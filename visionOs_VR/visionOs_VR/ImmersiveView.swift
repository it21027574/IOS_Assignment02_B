//
//  ImmersiveView.swift
//  visionOs_VR
//
//  Created by vinodi saumya on 2024-11-03.
//

import SwiftUI
import RealityKit

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            guard let skyBoxEntity = createSkyBox() else{
                print("Error loading skybox entity")
                return
                
            }
            content.add (skyBoxEntity)
        }
    }
        private func createSkyBox () -> Entity? {
            let largeSphere = MeshResource.generateSphere(radius: 1000)
            let skyBoxMaterial = UnlitMaterial()
            
            do{
                _ = try TextureResource.load(named: "anime")
                
            }catch{
                print("Error loading texture: \(error)")
            }
            let skyBoxEntity = Entity()
            skyBoxEntity.components.set(
                ModelComponent(
                    mesh: largeSphere, materials: [skyBoxMaterial])
            )
            skyBoxEntity.scale *= .init(x: -1, y: 1,z:1)
            return skyBoxEntity
        }
    }

#Preview {
    ImmersiveView()
}
