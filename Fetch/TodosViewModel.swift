//
//  TodosViewModel.swift
//  Fetch
//
//  Created by Leah on 14/02/2024.
//

import Foundation

class TodosViewModel: ObservableObject {
    @Published var todos: [Todo] = []

    func fetchTodos() {
        // Implementfunc fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }

            let todos = try? JSONDecoder().decode([Todo].self, from: data)
            DispatchQueue.main.async {
                self.todos = todos ?? []
            }
        }.resume()
    }
}
