//
//  MoviesView.swift
//  iMovie
//
//  Created by Gabriela Antezana on 11/24/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct MovieRowView : View{
    var movie: Movie
    var body: some View{
        VStack{
            HStack {
                Image(systemName: "play")
                    .resizable()
                    .frame(width: 50, height: 70)
                    .padding(.leading, 8)
                VStack {
                    HStack {
                        Text(movie.title)
                            .bold()
                        Spacer()
                    }
                    HStack {
                        Text(movie.overView)
                            .padding(.top, 8)
                        
                    Spacer()
                        
                    }
                }
                Button(action:{}){
                    Image(systemName: "heart")
                        .font(.largeTitle)
                        .padding(.trailing, 16)
                    
                }
            }
            Spacer()
            
        }
        
    }
}




struct MoviesView: View {
    
    var movies: [Movie] = [
    
        Movie(id: 1, title: "Frozen", overView: "se volvio oca", genders: [1,2], poster: ""),
        Movie(id: 2, title: "Frozen II", overView: "se volvio oca", genders: [1,2], poster: ""),
        Movie(id: 3, title: "Frozen III", overView: "se volvio oca", genders: [1,2], poster: "")
    ]
    
    var body: some View {
        List{
        ForEach(self.movies) { movie in
            MovieRowView(movie: movie)
        }
            
        }
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}
