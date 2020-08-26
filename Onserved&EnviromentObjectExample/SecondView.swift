

import SwiftUI

//struct SecondView: View {
//
//    @Binding var counterNumber: Int
//
//    var body: some View {
//        VStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            Button(action: {
//                self.counterNumber += 1
//            }) {
//                HStack {
//                    Image(systemName: "play")
//                        .font(.system(size: 25, weight: .bold, design: .rounded))
//                        .foregroundColor(.white)
//
//                    Text("Counter = \(self.counterNumber)")
//                        .font(.system(size: 25, weight: .bold, design: .rounded))
//                        .foregroundColor(.white)
//                }
//            }
//            .padding()
//            .background(Color.blue)
//            .cornerRadius(10, antialiased: true)
//        }
//    }
//}
//
//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView(counterNumber: .constant(0))
//    }
//}


struct SecondView: View {
    
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
            .background(Color.blue)
            .cornerRadius(10, antialiased: true)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
