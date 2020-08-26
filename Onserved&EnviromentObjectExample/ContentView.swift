
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var randomNumber = RandomNumber()
    
    var value = 2
    
    @State private var name = "Sergio"
    
    var body: some View {
        VStack{
            Text(self.name)
            TextField("Escribe algo", text: self.$name)
            
            Text("Numero random \(self.randomNumber.number)")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
            
            Text(self.randomNumber.number == value ? "Acertaste 😍 \(self.randomNumber.number)" : "fallaste 🤪 \(self.randomNumber.number)")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .foregroundColor(self.randomNumber.number == value ? .green : .red)
            
            
            VStack (alignment: .center, spacing: 20) {
                CustomButton(actionToDo: self.randomNumber.startTimer, icon: "play.fill", buttonTitle: "Iniciar", backgroundColor: .green)
                CustomButton(actionToDo: self.randomNumber.stopTimer, icon: "stop.fill", buttonTitle: "Detener", backgroundColor: .red)
                CustomButton(actionToDo: self.add, icon: "folder.fill", buttonTitle: "Contador + \(self.randomNumber.counter)", backgroundColor: .yellow)
            }
            .padding(.bottom, 50)
            
            SecondView(counterNumber: self.$randomNumber.counter)
            
        }
    }
    
    func add() {
        self.randomNumber.counter += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomButton: View {
    
    var actionToDo: () -> ()
    var icon: String
    var buttonTitle: String
    var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            self.actionToDo()
        }) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                Text(buttonTitle)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(backgroundColor)
        .cornerRadius(10, antialiased: true)
    }
}
