
import SwiftUI

struct ArticleDetailView: View {
    var favoriteVM: FavoriteListViewModel
    @State private var heart_pressed: Bool = false
    var article: Article
    
    init (article: Article, favoriteVM: FavoriteListViewModel) {
        self.favoriteVM = favoriteVM
        self.article = article
        self._heart_pressed = State(initialValue: self.favoriteVM.articleExist(title: article.title!))
    }
    
    var body: some View {
        VStack {
            Text(article.author ?? "")
            Text(article.title!)
            Text(article.description!)
            BigImageView(withURL: article.urlToImage!)
            Text(article.content!)
            Button(action: {
                if (self.heart_pressed == false){
                    self.favoriteVM.addFavorite(article: self.article)
                }
                else if (self.heart_pressed == true){
                    self.favoriteVM.deleteByTitle(title: self.article.title!)
                }
                self.heart_pressed = !self.heart_pressed
            }){
                Image(systemName: heart_pressed ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
        }
    }
}

//struct ArticleDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArticleDetailView(article: Article())
//    }
//}

