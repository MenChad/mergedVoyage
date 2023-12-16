//
//  RevealDetails.swift
//  Tests
//
//  Created by apprenant48 on 27/10/2022.
//

import SwiftUI

struct RevealDetails: View {
    @State var revealDetails = false
    var details = [
        DropDown(title: "Documents", content: "Les pièces justificatives suivantes devront être présentées à la demande de la Police aux frontières à votre arrivée en France:\nUn passeport en cours de validité, délivré depuis moins de 10 ans et valable 3 mois au moins après la date de sortie envisagée\nUn visa en cours de validité, s’il est requis\nUn justificatif d’hébergement couvrant toute la durée du séjour (réservation d’hôtel et/ou attestation d’accueil chez un proche préalablement validée en mairie)"),
        DropDown(title: "Langue", content: "Français"),
        DropDown(title: "Géographie", content: "Paris est situé dans le nord de la France, à une distance par route de 287 km au sud de Calais, 305 km au sud-ouest de Bruxelles, 774 km au nord de Marseille, à 385 km au nord-est de Nantes de 135 km au sud-est de Rouen1.\nParis est située sur l'arc de Seine, au nord, et comprend deux îles, l'île Sa1.int-Louis et la plus grande île de la Cité, qui forment la partie la plus ancienne de la ville. L'embouchure du fleuve au Havre sur la Manche est environ à 360 km en aval de la ville (longueur de la voie navigable).\nLa ville s'étend sur les deux rives du fleuve, la surface des quartiers de la rive droite étant supérieure à ceux de la rive gauche3."),
        DropDown(title: "Devise", content: "€  Euro "),
        DropDown(title: "Vaccins", content: "Make sure you are up-to-date on all routine vaccines before every trip. Some of these vaccines include:\nChickenpox (Varicella)\nDiphtheria-Tetanus-Pertussis\nFlu (influenza)\nMeasles-Mumps-Rubella (MMR)\nPolio Shingles")
    ]
    var body: some View {
        ScrollView(.vertical){
            ForEach(details) { detail in
                RevealDetailsRow(detail: detail)
                    .padding()
                    .foregroundColor(.black)
            }
        }
    }
}
struct RevealDetails_Previews: PreviewProvider {
    static var previews: some View {
        RevealDetails()
    }
}
