//
//  Picker.swift
//  Tests
//
//  Created by apprenant48 on 27/10/2022.
//

import SwiftUI

struct MyPickerView: View {
    @State var chooseContent = ["Info","Activity"]
    @Binding var chosenContent: String
    
    var body: some View {
        VStack{
            Picker("Choose your content", selection: $chosenContent) {
                ForEach(chooseContent, id: \.self) { item in
                    Text(item)
                }
            }.pickerStyle(.segmented)
                .padding()
        }
    }
}

struct MyPickerView_Previews: PreviewProvider {
    static var previews: some View {
        MyPickerView(chosenContent: .constant("Info"))
    }
}
