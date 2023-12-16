//
//  FileRow.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//


import SwiftUI

struct FileRow: View {
    var fichier: AppFile
    var body: some View {
                    VStack() {
                HStack {
                    Text(fichier.doc)
//                        .font(.headline)
                }
                
            }
    }
}

struct FileRow_Previews: PreviewProvider {
    static var previews: some View {
        FileRow(fichier: AppFile(doc: "passeport"))
    }
}

