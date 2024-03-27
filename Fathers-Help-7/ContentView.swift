//
//  ContentView.swift
//  Fathers-Help-7
//
//  Created by a on 17.03.2024.
//

import SwiftUI

extension SwiftUI.View {
    public func customModifiers() -> some View {
        self
            .padding()
            .foregroundStyle(.white)
            .fontWeight(.semibold)
            .fontDesign(.rounded)
    }
}

struct ContentView: View {
    @State private var presented = true
    @Namespace private var transition
    
    var body: some View {
        VStack {
            if presented {
                ZStack(alignment: .bottomTrailing) {
                    Rectangle().foregroundStyle(.clear)
                    Button {
                        presented.toggle()
                    } label: {
                        Text("Open")
                            .matchedGeometryEffect(id: "button", in: transition)
                            .font(.title3)
                            .customModifiers()
                            .background(alignment: .center) {
                                RoundedRectangle(cornerRadius: 12)
                                    .matchedGeometryEffect(id: "view", in: transition)
                                    .foregroundStyle(.blue)
                            }
                    }
                }
            } else {
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 12)
                        .matchedGeometryEffect(id: "view", in: transition)
                        .frame(width: 300, height: 400)
                        .foregroundStyle(.blue)
                    Button {
                        presented.toggle()
                    } label: {
                        Label("Back", systemImage: "arrowshape.backward.fill")
                            .fixedSize()
                            .matchedGeometryEffect(id: "button", in: transition)
                            .font(.title2)
                            .customModifiers()
                    }
                }
            }
        }
        .padding()
        .animation(.default, value: presented)
    }
}

#Preview {
    ContentView()
}
