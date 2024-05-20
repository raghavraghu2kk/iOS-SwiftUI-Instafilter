//
//  lesson2.swift
//  Instafilter
//
//  Created by Raghavendra Mirajkar on 18/05/24.
//

import SwiftUI

struct lesson2: View {
    @State private var showing = false
    @State private var backgroundcolor = Color.white
    var body: some View {
        Button("Dialoage Box") {
            showing.toggle()
        }
        .frame(width: 300, height: 300)
        .background(backgroundcolor)
        .confirmationDialog("Change Background", isPresented: $showing) {
            Button("Red") { backgroundcolor = .red}
            Button("Green") { backgroundcolor = .green}
            Button("Blue") { backgroundcolor = .blue}
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Select a new color")
        }
    }
}

#Preview {
    lesson2()
}
