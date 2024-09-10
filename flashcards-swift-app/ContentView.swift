import SwiftUI

struct ContentView: View {
    // Sample flashcards data
    let flashcards = [
        Flashcard(question: "What is Swift?", answer: "A powerful programming language for iOS development."),
                Flashcard(question: "What is SwiftUI?", answer: "A framework for building user interfaces on Apple platforms."),
                Flashcard(question: "What is Xcode?", answer: "An integrated development environment for macOS."),
                Flashcard(question: "What is @State in SwiftUI?", answer: "@State is a property wrapper that allows you to mutate and track state within a view."),
                Flashcard(question: "What is a View in SwiftUI?", answer: "A View is a protocol that represents a piece of the user interface."),
                Flashcard(question: "What does VStack do in SwiftUI?", answer: "VStack arranges views vertically in a stack."),
                Flashcard(question: "What is a ZStack?", answer: "ZStack overlays views on top of each other."),
                Flashcard(question: "What is a NavigationView?", answer: "NavigationView is a container for managing navigation between views."),
                Flashcard(question: "What does @Binding do in SwiftUI?", answer: "@Binding creates a two-way connection between views to share data."),
                Flashcard(question: "What is a List in SwiftUI?", answer: "List is a view that displays a scrollable collection of data."),
                Flashcard(question: "What does .sheet do in SwiftUI?", answer: ".sheet presents a modal view."),
                Flashcard(question: "What is @ObservedObject in SwiftUI?", answer: "@ObservedObject tracks state that comes from an external source or model."),
                Flashcard(question: "What does .padding do in SwiftUI?", answer: ".padding adds space around a view."),
                Flashcard(question: "What is @EnvironmentObject?", answer: "@EnvironmentObject allows you to pass data across views using environment storage."),
                Flashcard(question: "What is Spacer in SwiftUI?", answer: "Spacer adds flexible empty space between or around views."),
                Flashcard(question: "What does .animation do in SwiftUI?", answer: ".animation adds animation to changes in views."),
                Flashcard(question: "What is a ForEach loop in SwiftUI?", answer: "ForEach allows you to loop over a collection of data and create views."),
                Flashcard(question: "What is a ScrollView?", answer: "ScrollView is a container view that allows for scrolling content."),
                Flashcard(question: "What is a modifier in SwiftUI?", answer: "A modifier allows you to change the appearance or behavior of a view."),
                Flashcard(question: "What does @Published do?", answer: "@Published marks a property as observable to trigger UI updates when it changes.")
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
