import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject var randomNumber: RandomNumber
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                self.randomNumber.counter += 1
            }) {
                HStack {
                    Image(systemName: "play")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                    Text("Counter = \(self.randomNumber.counter)")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
            }
            .padding()
            .background(Color.gray)
            .cornerRadius(10, antialiased: true)
            
            Button(action: {
                self.randomNumber.stopAndResetCounter()
            }) {
                HStack {
                    Image(systemName: "stop")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                    Text("DETENER CONTADOR")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
            }
            .padding()
            .background(Color.gray)
            .cornerRadius(10, antialiased: true)
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
