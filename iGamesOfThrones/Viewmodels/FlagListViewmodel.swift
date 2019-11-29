
import Foundation

class FlagListViewModel: ObservableObject {
    @Published var flags:[Flag] = []
    
    init() {
        session.dataTask(with: url, completionHandler: {
            data, url, error in
            
            DispatchQueue.main.async {
                let mr = try! JSONDecoder().decode([Flag].self, from: data!)
                self.flags = mr
            }
            
        }).resume()
    }
}

