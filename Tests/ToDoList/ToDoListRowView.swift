//
//  ToDoListRowView.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct ToDoListRowView: View {
    
    let ToDoListTitle: String
    
    var body: some View {
    
            HStack {
                Text(ToDoListTitle)
                Spacer()
                ToDoListeCheckboxView()
            }
        }
    
    
    struct ToDoListRowView_Previews: PreviewProvider {
        static var previews: some View {
            ToDoListRowView(ToDoListTitle: "Réservation avion aller & retour")
        }
    }
}

