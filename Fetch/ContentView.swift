//
//  ContentView.swift
//  Fetch
//
//  Created by Leah on 14/02/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var fetcher = FetchToDo()
    var body: some View {
        VStack {
            List(fetcher.todos) { task in
                VStack(alignment: .leading) {
                    Text(task.title)
                        .font(.headline)
                    Text("\(task.completed.description)")
                        .font(.system(size: 11))
                        .foregroundColor(Color.purple)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
