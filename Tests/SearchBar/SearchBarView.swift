//
//  SearchBarView.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//
import SwiftUI

struct SearchBarView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults) { city in
                    NavigationLink(destination: InfoDetail()) {
                        Text(city.name)
                    }
                }
            }
            .searchable(text: $searchText,prompt: "Chercher votre destination")
            .navigationTitle("City")
        }
        
    }
    
    var searchResults: [City] {
        if searchText.isEmpty {
            return citiesList
        } else {
            return citiesList.filter { $0.name.contains(searchText)
                
            }
        }
    }
}
struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        
        SearchBarView()
        
    }
}

