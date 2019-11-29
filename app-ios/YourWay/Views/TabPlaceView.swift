//
//  TabPlaceView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Equatable {
    static func ==(lhs: Landmark, rhs: Landmark) -> Bool {
        lhs.id == rhs.id
    }
    
    let id = UUID().uuidString
    let name: String
    let location: CLLocationCoordinate2D
}

struct TabPlaceView: View {
    
    //@State var landmarks: [Landmark] = [
    //    Landmark(name: "El Break", location: .init(latitude: -12.1071201, longitude: -76.9628612)),
    //    Landmark(name: "Deporcentro", location: .init(latitude: -12.1171085, longitude: -76.9714969)),
    //]
    //@State var selectedLandmark: Landmark? = nil
    @ObservedObject private var placeListViewModel = PlaceListViewModel()
    
    var body: some View {
        ZStack {
            MapView(
                landmarks: $placeListViewModel.landmarks,
                selectedLandmark: $placeListViewModel.selectedLandmark
            )
                .edgesIgnoringSafeArea(.vertical)
            VStack {
                Spacer()
                Button(action: {
                    self.selectNextLandmark()
                }) {
                    Text("Siguiente")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(radius: 3)
                        .padding(.bottom)
                }
            }
        }
    }
    
    private func selectNextLandmark() {
        if case placeListViewModel.selectedLandmark = placeListViewModel.selectedLandmark,
            let currentIndex = placeListViewModel.landmarks.firstIndex(where: { $0 == placeListViewModel.selectedLandmark }),
            currentIndex + 1 < placeListViewModel.landmarks.endIndex {
            self.placeListViewModel.selectedLandmark = placeListViewModel.landmarks[currentIndex + 1]
        } else {
            placeListViewModel.selectedLandmark = placeListViewModel.landmarks.first
        }
    }
}

struct TabPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        TabPlaceView()
    }
}
