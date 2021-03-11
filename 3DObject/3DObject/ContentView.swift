//
//  ContentView.swift
//  3DObject
//
//  Created by Akshay Devkate on 08/03/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    var body: some View {
    VStack (spacing: 10) {
        SceneKitView(scene: SCNScene(named: "Aksjhay.obj")!, cameraPosition: SCNVector3(-10,-35,10), lightPosition: SCNVector3(-10,-35,10))
        .scaledToFit()
        Text("HEllo World")
        }
    }
}

struct SceneKitView: UIViewRepresentable {
    var scene: SCNScene
    var cameraPosition: SCNVector3
    var lightPosition: SCNVector3
    
    init(scene: SCNScene,cameraPosition: SCNVector3, lightPosition: SCNVector3) {
        self.scene = scene
        self.cameraPosition = cameraPosition
        self.lightPosition = lightPosition
        setupCamera()
        setupLight()
        
    }
    func setupCamera(){
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: cameraPosition.x, y:cameraPosition.y, z: cameraPosition.z)
        scene.rootNode.addChildNode(cameraNode)
        }
    func setupLight(){
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: cameraPosition.x, y: cameraPosition.y, z: cameraPosition.z)
        scene.rootNode.addChildNode(lightNode)
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light?.type = .ambient
        ambientLightNode.light?.color = UIColor.lightGray
        scene.rootNode.addChildNode(ambientLightNode)
    }
    func makeUIView(context: Context) -> SCNView {
        let sceneView = SCNView()
        sceneView.allowsCameraControl = true
        sceneView.backgroundColor = UIColor.white
        sceneView.cameraControlConfiguration.allowsTranslation = false
        sceneView.scene = scene
        return sceneView
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
    
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
