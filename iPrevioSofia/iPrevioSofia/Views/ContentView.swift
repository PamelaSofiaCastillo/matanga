
import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            MoviesView()
                .tabItem {
                    VStack {
                        Image(systemName: "film")
                        Text("Peliculas")
                    }
                }
                .tag(0)
            FavoriteView()
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("favoritos")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
