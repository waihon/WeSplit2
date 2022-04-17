//
//  ContentView.swift
//  WeSplit2
//
//  Created by Waihon Yew on 17/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Line 1")
                    Text("Line 2")
                    Text("Line 3")
                    Text("Line 4")
                    Text("Line 5")
                    Text("Line 6")
                }
                Section {
                    Text("Line 7")
                    Text("Line 8")
                    Text("Line 9")
                    Text("Line 10")
                    Text("Line 11")
                    Text("Line 12")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
