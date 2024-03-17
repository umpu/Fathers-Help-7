//
//  ContentView.swift
//  Fathers-Help-7
//
//  Created by a on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(.blue)
                .aspectRatio(1.0, contentMode: .fit)
            Text("Open")
        }
        .border(Color.black, width: 1)
    }
}

#Preview {
    ContentView()
}
