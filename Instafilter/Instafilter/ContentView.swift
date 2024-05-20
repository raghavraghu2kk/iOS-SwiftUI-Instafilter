//
//  ContentView.swift
//  Instafilter
//
//  Created by Raghavendra Mirajkar on 16/05/24.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            TabView{
                lesson1().tabItem { Label("Lesson 1", systemImage: "house") }
                lesson2().tabItem { Label("Lesson 2", systemImage: "house") }
                lesson3().tabItem { Label("Lesson 3", systemImage: "house") }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
