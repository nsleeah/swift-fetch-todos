//
//  Todo.swift
//  Fetch
//
//  Created by Leah on 14/02/2024.
//

import Foundation

struct Todo: Codable, Identifiable {
    let id: Int
    let title: String
    let completed: Bool
}

//https://jsonplaceholder.typicode.com/todos
