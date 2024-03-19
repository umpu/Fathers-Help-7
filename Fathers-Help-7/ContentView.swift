//
//  ContentView.swift
//  Fathers-Help-7
//
//  Created by a on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var mode = true
    @Namespace private var namespaceID
    
    var body: some View {
        VStack {
            if mode {
                ZStack(alignment: .bottomTrailing) {
                    Rectangle().foregroundStyle(.clear)
                    Button {
                        mode.toggle()
                    } label: {
                        Text("Open")
                            .matchedGeometryEffect(id: "button", in: namespaceID)
                            .padding()
                            .foregroundStyle(.white)
                            .font(.title2)
                            .background(alignment: .center) {
                                RoundedRectangle(cornerRadius: 12)
                                    .matchedGeometryEffect(id: "view", in: namespaceID)
                                    .foregroundStyle(.blue)
                            }
                    }
                }
            } else {
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 12)
                        .matchedGeometryEffect(id: "view", in: namespaceID)
                        .frame(width: 300, height: 400)
                        .foregroundStyle(.blue)
                    Button {
                        mode.toggle()
                    } label: {
                        Label("Back", systemImage: "arrowshape.backward.fill")
                            .padding()
                            .foregroundStyle(.white)
                            .font(.title2)
                            .fixedSize()
                            .matchedGeometryEffect(id: "button", in: namespaceID)
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .animation(.default, value: mode)
    }
}

#Preview {
    ContentView()
}
