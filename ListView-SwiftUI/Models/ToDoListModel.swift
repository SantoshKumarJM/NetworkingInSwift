//
//  ToDoListModel.swift
//  ListView-SwiftUI
//
//  Created by Santosh on 05/11/20.
//

import Foundation

struct ToDoList: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
