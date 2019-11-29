//
//  OnePlaceMapView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/23/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI
import MapKit


struct OnePlaceMapView: UIViewRepresentable {
    var selectedLandmark: Landmark
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = selectedLandmark.location
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        updateAnnotations(from: uiView)
    }
    
    private func updateAnnotations(from mapView: MKMapView) {
        mapView.removeAnnotations(mapView.annotations)
        let lms = [selectedLandmark]
        let newAnnotations = lms.map { LandmarkAnnotation(landmark: $0) }
        mapView.addAnnotations(newAnnotations)
    }
}


