//
//  ContentView.swift
//  Tests
//
//  Created by apprenant48 on 27/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Welcome()
                .tabItem{
                    Label("Destination", systemImage: "globe")
                }
            
            ToDoListView()
            //                .badge(4)
                .tabItem{
                    Label("To Do", systemImage: "list.bullet")
                }
            DocumentView()
                .tabItem{
                    Label("Documents", systemImage: "folder.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

