import SwiftUI

struct ContentView: View {
    // Sample flashcards data
    let flashcards = [
        Flashcard(question: "What is Swift?", answer: "A powerful programming language for iOS development."),
        Flashcard(question: "What is SwiftUI?", answer: "A framework for building user interfaces on Apple platforms."),
        Flashcard(question: "What is Xcode?", answer: "An integrated development environment for macOS.")
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 300))], spacing: 20) {
                ForEach(flashcards) { flashcard in
                    FlashcardView(flashcard: flashcard)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
