import SwiftUI

struct ContentView: View {
    // Sample flashcards for now
    @State private var flashcards = [
        Flashcard(question: "What is Swift?", answer: "A powerful programming language for iOS development."),
        Flashcard(question: "What is SwiftUI?", answer: "A modern UI framework by Apple."),
        Flashcard(question: "Test", answer: "Test.")
    ]
    
    var body: some View {
        NavigationView {
            List(flashcards) { flashcard in
                NavigationLink(destination: FlashcardDetailView(flashcard: flashcard)) {
                    Text(flashcard.question)
                }
            }
            .navigationTitle("Flashcards")
            .navigationBarItems(trailing: Button(action: {
                // Action to add new flashcard
            }) {
                Image(systemName: "plus")
            })
        }
    }
}

struct Flashcard: Identifiable {
    var id = UUID()
    var question: String
    var answer: String
}

struct FlashcardDetailView: View {
    let flashcard: Flashcard
    
    var body: some View {
        VStack {
            Text(flashcard.question)
                .font(.headline)
                .padding()
            
            Text(flashcard.answer)
                .font(.subheadline)
                .padding()
        }
        .navigationTitle("Flashcard")
    }
}
