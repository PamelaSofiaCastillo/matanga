
import CoreData
import SwiftUI

class FavoriteListViewModel: ObservableObject {
    @Published var favorites: [Favorite] = []
    
    func saveContext(){
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
    
    func addFavorite(article:Article) {
        let favorite = Favorite(context: context)
        favorite.title = article.title
        favorite.descripcion = article.description
        favorite.urlToImage = article.urlToImage
        favorites.append(favorite)
        saveContext()
    }
    
    func deleteFavorite(favorite: Favorite){
        context.delete(favorite)
        saveContext()
        loadFavorites()
    }
    
    func loadFavorites() {
        do {
            self.favorites.removeAll()
            self.favorites.append(contentsOf: try context.fetch(Favorite.fetchRequest()))
        } catch (let error){
            print(error)
        }
    }
    
    func articleExist(title: String) -> Bool {
        for fav in favorites {
            if (fav.title == title){
                return true
            }
        }
        return false
    }
    
    func deleteByTitle(title: String) {
        for fav in favorites {
            if (fav.title == title){
                deleteFavorite(favorite: fav)
            }
        }
    }
    
    init (){
        loadFavorites()
    }
}


