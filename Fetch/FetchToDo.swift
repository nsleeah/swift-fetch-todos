//
//  FetchToDo.swift
//  Fetch
//
//  Created by Leah on 14/02/2024.
//

import Foundation

class FetchToDo: ObservableObject {
    @Published var todos = [Todo]()
      
    init() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let todoItems = data {
                    let interpretedData = try JSONDecoder().decode([Todo].self, from: todoItems)
                    DispatchQueue.main.async {
                        self.todos = interpretedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}
