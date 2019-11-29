//
//  AboutEventView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/19/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct SportEventUserRow: View {
    var sportEvent: SportEventUser
    
    var body: some View {
        Text(sportEvent.user!.lastName!)
    }
}

struct AboutEventView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var sportEventViewModel: SportEventViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Text(sportEventViewModel.description)
                        .padding(.bottom, 16)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Tipo de deporte")
                    Spacer()
                }
                HStack {
                    Spacer()
                    Image(sportEventViewModel.sportTypeImageName)
                        .resizable()
                        .frame(width: CGFloat(50.0), height: CGFloat(50.0))
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Participantes")
                    Spacer()
                }
                ScrollView {
                  HStack {
                    Spacer()
                    ForEach(0..<self.sportEventViewModel.sportEventByUsersNames.count) { i in
                        ZStack {
                            Circle()
                                .fill(Color.black)
                                .frame(width: 50, height: 50)
                            Text("\(self.sportEventViewModel.sportEventByUsersNames[i])")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .font(Font.custom("", size: 14))
                        }
                    }
                    Spacer()
                  }
                }
                .frame(height: 50)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                HStack {
                    Spacer()
                    Text("Lugar Deportivo")
                        .padding(.top, 16)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text(sportEventViewModel.placeName)
                        .fontWeight(.thin)
                        .font(Font.custom("", size: 14))
                        .padding(.top, 16)
                    Spacer()
                }
                HStack {
                    OnePlaceMapView(selectedLandmark: sportEventViewModel.placeLandMark)
                }
                .frame(height: 80)
                .padding(.top, 8)
                .padding(.horizontal, 64)
                NavigationLink(destination: RateEventView(sportEventViewModel: sportEventViewModel)) {
                    HStack {
                        Text("Calificar")
                            .font(.body)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .foregroundColor(.white)
                    .background(Color(red: 33/255, green: 182/255, blue: 168/255, opacity: 1.0))
                    .cornerRadius(30)
                }
                .shadow(radius: 3)
                .padding(.top, 16)
                .padding(.bottom, 32)
                .padding(.horizontal, 64)
            }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button(action: {
                    DispatchQueue.main.asyncAfter(deadline: .now()) {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                            .accentColor(Color.black)
                        Text(sportEventViewModel.title)
                            .foregroundColor(Color.black)
                    }
            })
        }
    }
}

struct AboutEventView_Previews: PreviewProvider {
    static var previews: some View {
        AboutEventView(sportEventViewModel: SportEventViewModel(sportEvent: SportEvent()))
    }
}
