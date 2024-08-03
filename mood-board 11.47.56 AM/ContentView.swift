import SwiftUI

enum Emotion: String, CaseIterable, Identifiable {
    case A = "HAPPY"
    case B = "BABY"
    case C = "PISSY"
    case D = "ANGRY"
    
    var id: String { self.rawValue }
}

struct ContentView: View {
    @State private var selection: Emotion = .A
    
    var body: some View {
        VStack {
            Text(selection.rawValue)
                .font(.system(size: 150))
            
            Picker("Select Char:", selection: $selection) {
                ForEach(Emotion.allCases) { char in
                    Text(char.rawValue).tag(char)
                }
            }
            .pickerStyle(.segmented) // or .wheel, .menu, etc.
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
