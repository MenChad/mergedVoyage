//
//  ToDoListRemindBellView.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct ToDoListRemindBellView: View {
    
    @State private var BellState: Bool = false
    
    var body: some View {
        
         Button(action:
            {
                //1. Save state
                self.BellState = !self.BellState
                print("State : \(self.BellState)")
                
        }) {
                        //2. Will update according to state
                Image(systemName: "bell.and.waveform")
                .foregroundColor(self.BellState ? Color.blue : Color.gray)
                }
        
        .foregroundColor(Color.white)
        .font(.title2)
    }
}
    

struct ToDoListRemindBellView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListRemindBellView()
    }
}

