//
//  NetworkManager.swift
//  ListView-SwiftUI
//
//  Created by Santosh on 05/11/20.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var toDoLists = [ToDoList]()
    
    init() {
        fetchList()
    }
    
    func fetchList() {
        
        let Url = URL(string: "https://jsonplaceholder.typicode.com/todos/")!
        let urlResquest = URLRequest(url: Url)
        let urlSession = URLSession.shared.dataTask(with: urlResquest) { (data, response, error) in
            if error == nil {
                do {
                    let result = try JSONDecoder().decode([ToDoList].self, from: data!)
                    DispatchQueue.main.async {
                        self.toDoLists = result
                    }
                }catch {
                    print(error)
                }
            }
        }
        urlSession.resume()
    }
}
