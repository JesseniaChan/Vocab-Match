import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.7, green: 0.85, blue: 1.0)
                                    .ignoresSafeArea()
                
                VStack {
                    Text("Vocabulary Game")
                        .font(.title)
                        .padding()
                    
                    NavigationLink(destination: InstructionView()) {
                        Text("Instructions")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .padding()
                    
                    NavigationLink(destination: VocabularyListView()) {
                        Text("Start")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .padding()
                }
            }
            .navigationTitle("") // Remove the navigation bar title
            .navigationBarHidden(true) // Hide the navigation bar if needed
        }
    }
}

struct ContentView: View {
    var body: some View {
        HomeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
