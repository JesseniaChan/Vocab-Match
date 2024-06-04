import SwiftUI

struct VocabularyListView: View {
    let model = VocabularyModel()
    
    var body: some View {
        ZStack{
            Color(red: 0.7, green: 0.85, blue: 1.0)
                                .ignoresSafeArea()
            VStack {
                List(model.vocabulary, id: \.word) { word, definition in
                    VStack(alignment: .leading) {
                        Text(word)
                            .font(.headline)
                        Text(definition)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .navigationBarTitle("Vocabulary List")
                
                NavigationLink(destination: VocabularyGameView(vocabulary: model.vocabulary)) {
                    Text("Start Game")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding()
                }
            }
        }
        
    }
}
