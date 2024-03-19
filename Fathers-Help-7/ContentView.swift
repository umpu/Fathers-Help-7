//
//  ContentView.swift
//  Fathers-Help-7
//
//  Created by a on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var toggle = true
    @Namespace private var namespaceID
    
    var body: some View {
        VStack {
            if toggle {
                ZStack(alignment: .bottomTrailing) {
                    Rectangle().foregroundStyle(.clear)
                    Button {
                        withAnimation() {
                            toggle.toggle()
                        }
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
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
            } else {
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 12)
                        .matchedGeometryEffect(id: "view", in: namespaceID)
                        .frame(width: 300, height: 400)
                        .foregroundStyle(.blue)
                    Button {
                        withAnimation() {
                            toggle.toggle()
                        }
                    } label: {
                        Label("Back", systemImage: "arrowshape.backward.fill")
                            .padding()
                            .foregroundStyle(.white)
                            .font(.title2)
                            .fixedSize(horizontal: true, vertical: true)
                            .matchedGeometryEffect(id: "button", in: namespaceID)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
