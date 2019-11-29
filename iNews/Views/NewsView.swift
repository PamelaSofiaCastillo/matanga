
import SwiftUI

struct NewRowView: View {
    @EnvironmentObject var favoriteVM: FavoriteListViewModel
    @State private var show_modal: Bool = false
    var article: Article
    
    var body: some View {
        VStack {
            HStack {
                ImageView(withURL: article.urlToImage == nil ? noImageUrl : article.urlToImage!)
                
                VStack {
                    HStack {
                        Text(article.title!)
                            .bold()
                            .lineLimit(1)
                        
                        Spacer()
                    }
                    HStack {
                        Text(article.description!)
                            .padding(.top, 8)
                            .lineLimit(2)
                        
                        Spacer()
                    }
                }
                Button(action: {
                    //self.favoriteVM.addFavorite(article: self.article)
                    self.show_modal = true
                }){
                    Image(systemName: "eye")
                        .font(.largeTitle)
                        .padding(.trailing, 16)
                }
                .sheet(isPresented: self.$show_modal) {
                    ArticleDetailView(article: self.article, favoriteVM: self.favoriteVM)
                        //.environmentObject(self.favoriteVM)
                }
                
            }
            Spacer()
        }
    }
}

struct NewsView: View {
    @ObservedObject var articleListViewModel = ArticleListViewModel()
    
    var body: some View {
        VStack {
            HStack {
                TextField("Pelicula a buscar", text: $articleListViewModel.peliculaBuscar)
                    .padding(.top, 16)
                    .padding(.bottom, 16)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                
                Button(action: {
                    self.articleListViewModel.makeRequest()
                }){
                    Text("Buscar")
                        .padding(.trailing, 16)
                }
            }.background(Color.gray)
            
            List{
                ForEach(self.articleListViewModel.articles) { article in
                    NewRowView(article:article)
                }
            }
        }
    }
}


struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
