//
//  ToDoListTaskAddKeybord.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct ToDoListTaskAddKeybord: View {
    @State private var text = ""
    @State private var mood = "mood"
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                
                Text("Ajouter une tâche")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                HStack{
                    TextField("Penser à ...", text: $text)
                        .padding()
                        
                        .frame(minWidth: 170, minHeight: 20 )
                        .background(Color.gray.opacity(0.1).cornerRadius(10))
                    ToDoListeCheckboxView()
                   
                        .frame(maxWidth: 30, maxHeight: 53)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(5)
                    ToDoListRemindBellView()
                        .frame(maxWidth: 30, maxHeight: 53)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(5)
                }
                
                ToDoListHourDatePickerView()
                ToDoListSaveButton()
            }
            
        }.padding()
    }
    struct ToDoListTaskAddKeybord_Previews: PreviewProvider {
        static var previews: some View {
            ToDoListTaskAddKeybord()
        }
    }
}
