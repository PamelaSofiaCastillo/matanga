
import SwiftUI

struct FavoriteRowView: View {
    
    @EnvironmentObject var favoriteVM: FavoriteListViewModel
      var favorite1 : Favorite
      var pos: Int
    var body: some View {
    VStack{
        HStack {
            ImageView(withURL: favorite1!.imageUrlString!)
            VStack{
                HStack {
                    Text(favorite1!.title!)
                        .bold()
                    Spacer()
                }
                HStack {
                    Text(favorite1.overview!)
                        .padding(.top, 8)
                        .lineLimit(2)
                    Spacer()
                }
            }
            Button(action:{
                
            }){
                Image(systemName: "trash")
                    .font(.largeTitle)
                    .padding(.trailing,16)
            }
        }
        Spacer()
    }
    
    }
}




struct FavoriteView: View {
   @EnvironmentObject var favoriteListViewModel: FavoriteListViewModel
      
    var body: some View {
        List {
                   ForEach(0..<self.favoriteListViewModel.favorites.count) { i in
                       FavoriteRowView(favorite1: self.favoriteListViewModel.favorites[i], pos: i)
                   }
               }
        
        
        
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
