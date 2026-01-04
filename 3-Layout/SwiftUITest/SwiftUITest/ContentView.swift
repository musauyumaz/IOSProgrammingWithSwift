//
//  ContentView.swift
//  SwiftUITest
//
//  Created by MUSA UYUMAZ on 4.01.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello SwiftUI!")
                .padding()
                .foregroundColor(.blue)
            
            Spacer()
            Text("Hello")
                .foregroundColor(.green)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
