import SwiftUI

struct ContentView: View {
    @State private var counter = 0

    var body: some View {
        VStack(spacing: 10){
            HStack {
                Rectangle().fill(Color.red).frame(width: 30, height: 30)
                Text("Counter: \(counter)")
                    .font(.system(size: 35))
                    .foregroundColor(.purple)
            }
            .padding(30)
            HStack{
                Button(action: {
                    counter = counter + 1
                }) {
                    Text("Increase")
                        .font(.system(size: 25))
                        .frame(width: 150, height: 50) // Buton boyutu
                        .background(Color.green) // Buton arka plan rengi
                        .foregroundColor(.white) // Buton metin rengi
                        .cornerRadius(10) // Buton köşe yuvarlama
                }
                Button(action: {
                    counter = counter - 1
                }) {
                    Text("Decrease")
                        .font(.system(size: 25))
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            Button(action: {
                counter = 0
            }) {
                Text("Reset")
                    .font(.system(size: 25))
                    .frame(width: 100, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
