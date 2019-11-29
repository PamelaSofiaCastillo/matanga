

import SwiftUI

struct FlagRowView: View {
    
    var flag : Flag
    var body: some View {
        VStack{
            
            HStack{
                
                ImageView(withURL: flag.flagUrl == nil ? noImageUrl : flag.flagUrl)
                VStack{
                    HStack {
                        Text(flag.name)
                        .bold()
                        .lineLimit(1)
                      Spacer()
                        
                    }
                    
                    HStack {
                        Text(flag.region)
                        .lineLimit(2)
                        .padding(.top,16)
                     Spacer()
                    }
                    
                    
                }
                
                Button(action:{}){
                    Image(systemName: "eye")
                        .font(.largeTitle)
                        .padding(.trailing,16)
                }
                
            }
            Spacer()
        }
    }
}




struct FlagView: View {
    @ObservedObject private var flagListViewModel = FlagListViewModel()
    var body: some View {
    
        List{
            ForEach(self.flagListViewModel.flags) { flag in
                        FlagRowView(flag: flag)

                       }
            
        }
    }
}

struct FlagView_Previews: PreviewProvider {
    static var previews: some View {
        FlagView()
    }
}
