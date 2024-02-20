import SwiftUI

struct ContentView: View {
    @State var star: Bool = true
    @State var color: Color = .blue
    
    @State var color2: Color = Color(.displayP3, red: 245/255, green: 200/255, blue: 235/255, opacity: 1)
    @State var color3: Color = Color(.displayP3, red: 58/255, green: 235/255, blue: 52/255, opacity: 1)
    var body: some View {
        VStack {
            Text("Austin Dolby 17 2023-2024")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
               .foregroundColor(color)
           Text("My favorite color is red 🍎.")
            Text("Something interesting about me is that I really enjoy eating all different kinds of foods. ")
                .foregroundColor(color2)
            Button(action: {
                star.toggle()
                if star {
                    color = .red
                    
                }
                else {
                    color = .blue
                }
            }, label: {
                Image("Burger")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            })
            Text("About me")
                .font(.subheadline)
            Text("Recently I have been learning the guitar")
                .foregroundColor(color3)
            
        }
        Image("Guitar")
    }
}
