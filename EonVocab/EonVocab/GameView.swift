import SwiftUI

struct VocabularyGameView: View {
    let vocabulary: [(word: String, definition: String)]

    
    @State private var currentWordIndex = 0
    @State private var score = 0
    @State private var final = 0
    @State private var userInput = ""
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        ZStack{
            VStack {
                Text("Score: \(score)")
                    .padding()
                
                Text(vocabulary[currentWordIndex].definition)
                    .font(.title)
                    .padding()
                
                TextField("Enter the word", text: $userInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Submit", action: checkAnswer)
                    .padding()
            }
            .alert(isPresented: $showAlert) {
                if currentWordIndex == vocabulary.count - 1 {
                    return Alert(title: Text("Game Over"), message: Text("You have finished the game! Your final score is \(score)."), dismissButton: .default(Text("OK")))
                } else {
                    return Alert(title: Text("Result"), message: Text(alertMessage), dismissButton: .default(Text("OK")) {
                        nextWord()
                    })
                }
            
        }
       
        }
    }
    
    func checkAnswer() {
        if userInput.lowercased() == vocabulary[currentWordIndex].word.lowercased() {
            score += 1
            alertMessage = "Your answer is correct!"
        } else {
            alertMessage = "Your answer is incorrect!"
        }
        showAlert = true
    }
    
    func nextWord() {
        currentWordIndex += 1
        userInput = ""
    }
}
