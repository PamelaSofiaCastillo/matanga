
import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){

            ArticleView()
            .tabItem {
                    VStack {
                        Image(systemName: "doc.richtext")
                        Text("News")
                    }
                }
                .tag(0)
                FavoriteView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "star")
                        Text("Favorite")
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
