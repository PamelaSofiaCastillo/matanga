
import SwiftUI

struct MovieRowView: View {
    @EnvironmentObject var favoriteVM: FavoriteListViewModel
    var movie: Movie
    
    var body: some View {
        VStack{
            HStack {
                ImageView(withURL: movie.imageUrlString)
                VStack{
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
                Button(action: {
                    self.favoriteVM.addFavorite(movie: self.movie)
                }){
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
    @ObservedObject private var movieListViewModel = MovieListViewModel()
    
    var body: some View {
        List {
            ForEach(self.movieListViewModel.movies) { movie in
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
