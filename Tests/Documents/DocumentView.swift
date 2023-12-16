//
//  DocumentView.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct DocumentView: View {
    let files = [
        AppFile(doc: "Passport"),
        AppFile(doc: "Pièce d'identité"),
        AppFile(doc: "Assurance"),
        AppFile(doc: "Billet"),
        AppFile(doc: "Réservation"),
        AppFile(doc: "Vaccin")
    ]
    var body: some View {
        NavigationView {
            VStack(alignment:.leading){
                Text("")
                    .padding()
                List(files){ file in
                    NavigationLink(destination: AddFile()) {
                        FileRow(fichier: file)
                    }
                }
                .navigationTitle("Mes Documents")
            }
            }
        }
}

struct DocumentView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentView()
    }
}

