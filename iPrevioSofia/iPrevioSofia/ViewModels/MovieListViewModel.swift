
import Foundation

class MovieListViewModel: ObservableObject {
    @Published var movies:[Movie] = []
    
    init() {
        session.dataTask(with: url, completionHandler: {
            data, url, error in
            
            DispatchQueue.main.async {
                let mr = try! JSONDecoder().decode(MovieResponse.self, from: data!)
                self.movies = mr.results
            }
            
        }).resume()
    }
}
