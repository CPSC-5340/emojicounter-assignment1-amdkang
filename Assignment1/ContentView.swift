//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

let emojis: [String] = ["🤣","😜","😀","🤩","😂"]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(emojis, id: \.self ) {
                    emoji in ListItem(emoji: emoji)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListItem: View {
    var emoji: String
    @State var counter = 0
    
    var body: some View {
        HStack {
            Text(emoji)
            Text("Counter:  \(counter)")
                .foregroundColor(.red)
            Spacer()
            Image(systemName: "plus")
                .imageScale(.large)
                .padding(3)
                .onTapGesture {
                    counter += 1
                }
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.red)
                )
                .foregroundColor(.red)
                .padding()
            
            Image(systemName: "minus")
                .imageScale(.large)
                .padding(9)
                .onTapGesture {
                    counter -= 1
                }
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.red)
                )
                .foregroundColor(.red)
        }
        .foregroundColor(.white)
        .padding()
    }
}
