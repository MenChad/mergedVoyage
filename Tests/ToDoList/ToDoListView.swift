//
//  ToDoListView.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//


import SwiftUI

struct ToDoListView: View {
    
    @State private var items: [String] = ["Réserver avion aller et retour", "Réserver train aller & retour","Acheter une valise", "Faire vaccin de la f.jaune", "Faire le passeport", "Réserver hôtel", "Faire la demande de visa",
        "Numériser mes documents", "Faire le change de devise", "Réserver les restaurant", "Louer une voiture 5 places", "Acheter chaussures de marche", "Réserver activité tennis"
    ]
    
    
    var body: some View {
        NavigationView {
            VStack {
                List{
                    ForEach(items, id: \.self) {items in ToDoListRowView (ToDoListTitle: items)}
                        
                        .swipeActions{
                            Button(action: {
                            }){
                                Image(systemName: "trash")
                            }.tint(.red)
                            
                            Button(action: {
                            }){
                                Image(systemName: "bell.slash")
                            }.tint(.purple)
                        }
                    }
                .listStyle(PlainListStyle())
                .navigationTitle("Tâches")
                .padding(.top)
                .navigationBarItems(trailing:
                    NavigationLink("Ajouter", destination: ToDoListTaskAddKeybord())
                                    
                )
            }
        }
        
    }
}
   
    
    struct ToDoListView_Previews: PreviewProvider {
        static var previews: some View {
         
                ToDoListView()
            
        }
    }
    


