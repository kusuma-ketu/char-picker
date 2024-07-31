//
//  ContentView.swift
//  beginnerapp
//
//  Created by Raj Shah on 7/22/24.
//

import SwiftUI

enum CharSet: String {
    case A = "A"
    case B = "B"
}
struct ContentView: View {
    @State var selection: CharSet = .A
    
    var body: some View {
        VStack{
            Text(selection.rawValue)
                .font(.system(size:150))
            Picker("Select Char:", selection: $selection)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
