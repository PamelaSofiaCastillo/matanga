
import Foundation

struct Flag: Decodable, Identifiable {
    
    let id = UUID()
    let name: String
    let region: String
    let flagUrl: String

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        case region = "region"
        case flagUrl = "flag"
        
    }
}
