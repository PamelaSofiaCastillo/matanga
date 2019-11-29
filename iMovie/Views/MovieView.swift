
import SwiftUI

struct MovieRowView: View {

var  movie :Movie
     var body: some View {
           VStack{
               HStack {
                   Image(systemName: "play")
                       .resizable()
                       .frame(width: 50, height: 70)
                       .padding(.leading, 8)
                   VStack {
                       HStack {
                           Text("Titulo")
                               .bold()
                           Spacer()
                       }
                       HStack {
                           Text("Descripcion")
                               .padding(.top, 8)
                            .lineLimit(2)
                           
                       Spacer()
                           
                       }
                   }
                   Button(action:{}){
                       Image(systemName: "heart")
                           .font(.largeTitle)
                           .padding(.trailing, 16)
                       
                   }
               }
               Spacer()
               
           }
           
           
       }
}
struct MovieView {
     var movies:[Movie] = [
      Movie(id: 1, title: "Frozen", overView: "se volvio oca", genders: [1,2], poster: ""),
             Movie(id: 2, title: "Frozen II", overView: "se volvio oca", genders: [1,2], poster: ""),
             Movie(id: 3, title: "Frozen III", overView: "se volvio oca", genders: [1,2], poster: "")
    ]
    
    var body: some View {
        List{
     ForEach(self.movies) { movie in
                   MovieRowView(movie: movie)
        
        }
        
        
    }
    
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
