//
//  mapVIew.swift
//  swiftUIcalculator
//
//  Created by Akshay Devkate on 21/11/19.
//  Copyright © 2019 Akshay Devkate. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
    }
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
