
import SwiftUI
import Combine

class RandomNumber: ObservableObject {
    
    @Published var number: Int = 0
    
    @Published var counter: Int = 1

    private var timer = Timer()
    
    init() {
        startTimer()
    }
    
    func startTimer () {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { _ in
            self.number = Int.random(in: 0 ..< 5)
        }
    }
    
    func stopTimer () {
        self.timer.invalidate()
    }
    
}
