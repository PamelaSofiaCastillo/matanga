
import Foundation

class ArticleListViewModel: ObservableObject {
   
    @Published var articles:[Article] = []
    @Published var articuloBuscar:String = ""
    
    init() {
        makeRequest()
    }
    
    func makeRequest() {
        
        let urlString = "https://newsapi.org/v2/everything?q=\(articuloBuscar  == "" ? "bitcoin" : articuloBuscar)&from=2019-11-25&sortBy=publishedAt&apiKey=8372988de87d4bfd9f9955a7bbf80b89"
        
        session.dataTask(with: URL(string: urlString)!, completionHandler: {
            data, url, error in
            
            DispatchQueue.main.async {
                let mr = try! JSONDecoder().decode(ArticleResponse.self, from: data!)
                self.articles = mr.articles
            }
            
        }).resume()
    }
   
    
//    init() {
//        session.dataTask(with: url, completionHandler: {
//            data, url, error in
//
//            DispatchQueue.main.async {
//                let mr = try! JSONDecoder().decode(ArticleResponse.self, from: data!)
//                self.articles = mr.articles
//            }
//
//        }).resume()
//    }
}

