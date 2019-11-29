

import CoreData
import SwiftUI

class FavoriteListViewModel: ObservableObject {
    @Published var favorites: [Favorite] = []
    
    func saveContext(){
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
    
    func addFavorite(movie: Movie) {
        let favorite = Favorite(context:context)
        favorite.id = Int32(movie.id)
        favorite.title = movie.title
        favorite.overView = movie.overView
        favorite.imageUrlString = movie.imageUrlString
        favorites.append(favorite)
        saveContext()
    }
    
    
    func deleteFavorite(favorite: Favorite, pos: Int){
        favorites.remove(at: pos)
        context.delete(favorite)
        saveContext()
    }
    
    init (){
        do {
                 self.favorites = try context.fetch(Favorite.fetchRequest())
             } catch (let error){
                 print(error)
             }
    }
}

