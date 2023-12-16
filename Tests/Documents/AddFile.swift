//
//  AddFile.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//


import SwiftUI

struct AddFile: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack{
            Button("File.pdf") {
                dismiss()
            }
            .font(.title)
            .padding()
            .background(.white)
            Button(action: {
                
            }, label: {
                Text("Sauvegarder")
                    .foregroundColor(Color.white)
                    .frame(minWidth: 150)
                    .frame(minHeight:45)
                    .background(Color.blue.cornerRadius(5)).navigationTitle("Ajouter un document")
            })
            .frame(maxWidth: 500)
        }}
}

struct arretemonvier_Previews: PreviewProvider {
    static var previews: some View {
        AddFile()
    }
}

