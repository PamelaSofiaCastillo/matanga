//
//  RateEventView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/21/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct RateEventView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var sportEventViewModel: SportEventViewModel
    @State var selected = -1
    
    init(sportEventViewModel: SportEventViewModel) {
        self.sportEventViewModel = sportEventViewModel
        self._selected = State(initialValue: Int(sportEventViewModel.rating))
    }
    
    var body: some View {
        VStack {
            CustomRatingView(selected: $selected)
            Button(action: {
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    self.presentationMode.wrappedValue.dismiss()
                }
            }) {
                HStack {
                    Text("Calificar evento")
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

struct RateEventView_Previews: PreviewProvider {
    static var previews: some View {
        RateEventView(sportEventViewModel: SportEventViewModel(sportEvent: SportEvent()))
    }
}
