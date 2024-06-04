import SwiftUI

struct InstructionView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.7, green: 0.85, blue: 1.0)
                    .ignoresSafeArea()
                
                VStack {
                    
                    VStack {
                        
                        Text("1. Learn the vocabulary from the vocabulary list.")
                            .font(.subheadline)
                            .padding()
                        
                        Text("2. Test it out in the game. In the game type out the term for the given definition. If it is correct, then a pop-up window will show as if you win or lose.")
                            .font(.subheadline)
                            .padding()
                        
                        Text("3. In the game, type out the term for the given definition. A pop-up window will tell you if your answer is correct.")
                            .font(.subheadline)
                            .padding()
                        
                        Text("4. After all vocabulary words are learned, a pop-up window will show that the game is over and display the points earned.")
                            .font(.subheadline)
                            .padding()
                    }
                    
                    Spacer() // Push content to center vertically
                }
            }
            .navigationBarTitle("Instructions", displayMode: .inline)
        }
    }
}

struct InstructionView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionView()
    }
}
