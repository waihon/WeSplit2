//
//  ContentView.swift
//  WeSplit2
//
//  Created by Waihon Yew on 17/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]

    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: "USD"))
            }
        }
    }
}

struct OverviewContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
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
                }
                Section {
                    Button("Tap Count: \(tapCount)") {
                        tapCount += 1
                    }
                }
                Section {
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                }
                Section {
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }
                Section {
                    ForEach(0..<100) {
                        Text("Row \($0)")
                    }
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
