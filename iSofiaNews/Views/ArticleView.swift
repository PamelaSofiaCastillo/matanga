

import SwiftUI

struct ArticleRowView: View {
    @EnvironmentObject var favoriteVM: FavoriteListViewModel
    @State private var show_modal: Bool = false
      
    var article: Article
    var body: some View {
        
        VStack{
                   HStack{
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
                               .lineLimit(2)
                                   .padding(.top,8)
                               Spacer()
                           }
                       }
                       
                       Button(action:{
                        self.show_modal = true
                       }){
                           Image(systemName: "eye")
                               .padding(.trailing,8)
                           
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

struct ArticleView: View {
    @ObservedObject var articleListViewModel = ArticleListViewModel()

    var body: some View {
        
        VStack {
            HStack {
                TextField("News to search", text: $articleListViewModel.articuloBuscar)
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
                    ArticleRowView(article:article)
                }
            }
        }
        
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
    }
}
