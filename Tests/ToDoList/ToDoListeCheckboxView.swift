//
//  ToDoListeCheckboxView.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//
import SwiftUI

struct ToDoListeCheckboxView: View {
    
    @State private var checkState: Bool = false
    
    var body: some View {
        
         Button(action:
            {
                //1. Save state
                self.checkState = !self.checkState
                print("State : \(self.checkState)")

        }) {
                        //2. Will update according to state
                Image(systemName: "checkmark")
                .foregroundColor(self.checkState ? Color.blue : Color.gray)
                }
        
        .foregroundColor(Color.white)
    }
}
    

struct ToDoListeCheckboxView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListeCheckboxView()
    }
}
