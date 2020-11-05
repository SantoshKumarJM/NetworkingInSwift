//
//  ContentView.swift
//  ListView-SwiftUI
//
//  Created by Santosh on 05/11/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.toDoLists) { toDoItem in
                VStack(alignment: .leading) {
                    if toDoItem.completed == true {
                        Text(toDoItem.title).font(.title).foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                            .background(Color(.green))
                    }else {
                        Text(toDoItem.title).font(.title).foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                    }
                }
            }
            .navigationBarTitle("ToDo List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
