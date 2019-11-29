
import SwiftUI

struct FavoriteRowView: View {
    @EnvironmentObject var favoriteVM: FavoriteListViewModel
    var favorite: Favorite
    //var pos: Int
    
    var body: some View {
        VStack{
            HStack {
                ImageView(withURL: favorite.urlToImage ?? "")
                VStack{
                    HStack {
                        Text(favorite.title ?? "")
                            .bold()
                        Spacer()
                    }
                    HStack {
                        Text(favorite.descripcion ?? "")
                            .padding(.top, 8)
                            .lineLimit(2)
                        Spacer()
                    }
                }
                Button(action:{
                    self.favoriteVM.deleteFavorite(favorite: self.favorite)
                }){
                    Image(systemName: "trash")
                        .font(.largeTitle)
                        .padding(.trailing, 16)
                }
            }
            Spacer()
        }
        
    }
}

struct FavoriteView: View {
    @EnvironmentObject var favoriteListViewModel: FavoriteListViewModel
    
    var body: some View {
        List{
            ForEach(self.favoriteListViewModel.favorites, id: \.self) { favorite in
                FavoriteRowView(favorite: favorite)
            }
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}

