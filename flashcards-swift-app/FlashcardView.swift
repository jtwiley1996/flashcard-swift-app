import SwiftUI

struct FlashcardView: View {
    let flashcard: Flashcard
    
    @State private var flipped = false
    
    var body: some View {
        ZStack {
            // Front of the card
            if !flipped {
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom))
                    .shadow(radius: 10)
                    .overlay(
                        Text(flashcard.question)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                    )
                    .frame(width: 300, height: 200)
                    .transition(.slide)
                    .rotation3DEffect(.degrees(flipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            } else {
                // Back of the card
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]), startPoint: .top, endPoint: .bottom))
                    .shadow(radius: 10)
                    .overlay(
                        Text(flashcard.answer)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                    )
                    .frame(width: 300, height: 200)
                    .transition(.slide)
                    .rotation3DEffect(.degrees(flipped ? 0 : 180), axis: (x: 0, y: 1, z: 0))
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.6)) {
                flipped.toggle()
            }
        }
    }
}

struct Flashcard: Identifiable {
    var id = UUID()
    var question: String
    var answer: String
}

struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView(flashcard: Flashcard(question: "What is Swift?", answer: "A powerful programming language for iOS development."))
    }
}
