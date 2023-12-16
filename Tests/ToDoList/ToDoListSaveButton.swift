//
//  ToDoListSaveButton.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct ToDoListSaveButton: View {
    var body: some View {
      
        
        Button(action: {
            
        }, label: {
            Text("Sauvegarder".uppercased())
                .foregroundColor(Color.white)
                .frame(minWidth: 150)
                .frame(minHeight:45)
                .background(Color.blue.cornerRadius(5))
        })
        .frame(maxWidth: 500)
    }
}

struct ToDoListSaveButton_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListSaveButton()
    }
}

