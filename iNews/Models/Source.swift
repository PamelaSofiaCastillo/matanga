import Foundation

struct Source: Decodable, Identifiable {
  
    let id = UUID()
    let name: String
    
    enum CodingKeys: String, CodingKey {
        
        case name = "name"
      
    }
    
}

struct Article: Decodable, Identifiable {
   
    let id = UUID()
    let source: Source?
    let author: String
    let title: String
    let name: String
    let description: String
    let urlToImage: String
    
    enum CodingKeys: String, CodingKey {
        case source = "source"
        case author =  "author"
        case title = "title"
        case name = "name"
        case description = "description"
        case urlToImage = "urlToImage"
        
    }
}
struct ArticleResponse: Decodable {
    var articles = [Article]()

    enum CodingKeys: String, CodingKey {
        case articles = "articles"
 }   }


