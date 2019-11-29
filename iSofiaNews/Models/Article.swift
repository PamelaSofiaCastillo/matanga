
import Foundation

struct Source: Decodable, Identifiable {
  
    var id = UUID()
    var name: String
    
    enum CodingKeys: String, CodingKey {
        
        case name = "name"
      
    }
    
    init() {
        id = UUID()
        name = "unknown"
    }
    
}

struct Article: Decodable, Identifiable {
   
    var id:UUID = UUID()
    var source: Source?
    var author: String?
    var title: String?
    
    var description: String?
    var urlToImage: String?
    var content: String?
    
    enum CodingKeys: String, CodingKey {
        case source = "source"
        case author =  "author"
        case title = "title"
       
        case description = "description"
        case urlToImage = "urlToImage"
        case content = "content"
        
    }
    
    init() {
        id = UUID()
        source = Source()
        author = "unknown"
        title = "unknown"
        description = "unknown"
        urlToImage = "unknown"
        content = "unknown"
    }
}

struct ArticleResponse: Decodable {
   var articles = [Article]()

   enum CodingKeys: String, CodingKey {
       case articles = "articles"
}   }
