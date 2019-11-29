
import SwiftUI


struct MovieRowView: View {
    var movie:Movie
    var body: some View {
        VStack {
                   HStack {
                    ImageView(withURL: movie.imageUrlString)
                       VStack {
                           HStack {
                            Text(movie.title)
                                   .bold()
                               Spacer()
                           }
                           HStack {
                            Text(movie.overView)
                                   .padding(.top, 8)
                                .lineLimit(2)
                                   
                               Spacer()
                           }
                       }
                       
                       Button(action:{}){
                           
                           Image(systemName: "star")
                           
                           .font(.largeTitle)
                            .padding(.trailing,16)
                           
                       }
                     
                   }
                   Spacer()
                   
               }
    
}
}


struct MoviesView: View {
    
//    let movies : [Movie] = [
//    Movie(id: 1, title: "Frozne", overView: "Olaf", genders: [1,2], poster: "poster1"),
//    Movie(id: 2, title: "Frozne", overView: "Olaf", genders: [1,2], poster: "poster1"),
//    Movie(id: 3, title: "Frozne", overView: "Olaf", genders: [1,2], poster: "poster1"),
//    Movie(id: 4, title: "Frozne", overView: "Olaf", genders: [1,2], poster: "poster1")
//    ]
    
    @ObservedObject var movieListViewModel = MovieListViewModel()

    
    var body: some View {
        List{
            ForEach(movieListViewModel.movies) { movie in
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
