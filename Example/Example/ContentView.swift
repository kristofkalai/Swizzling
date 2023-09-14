//
//  ContentView.swift
//  Example
//
//  Created by Kristóf Kálai on 2023. 09. 14..
//

import SwiftUI
import Swizzling

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear(perform: swizzling)
    }

    private func swizzling() {
        swizzleMethods(from: #selector(Person.introduce), of: Person.self,
                       to: #selector(Person.customIntroduce), of: Person.self)
        Person().introduce()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
