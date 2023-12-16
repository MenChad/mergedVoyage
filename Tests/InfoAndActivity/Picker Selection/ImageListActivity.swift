//
//  ImageListActivity.swift
//  Tests
//
//  Created by apprenant48 on 27/10/2022.
//

import SwiftUI


struct ImageListActivity: View {
    var cats = [
        //        ImageOneActivity(
        CategoryActivity(name: "Restaurants", images: [
            ImageOneActivity(title: "Hôtel-Barrière-Le-Fouquet’s-Paris-Terrasse-restaurant-Le-Joy-|-630x405-|-©-Adrien-Hue", nameOf: "Le-Fouquet"),
            ImageOneActivity(title: "PPR-OiseauBlanc", nameOf: "Oiseau Blanc"),
            ImageOneActivity(title: "Terrasse-Restaurant-Coco-Paris-Opéra-Garnier", nameOf: "Coco"),
            ImageOneActivity(title: "Terrasse-Restaurant-Perruche-Printemps-Haussmann-Paris", nameOf:"Perruche-Printemps"),
            ImageOneActivity(title: "under the sea",nameOf: "Under the sea")
        ]),
        CategoryActivity(name: "Musées", images: [
            ImageOneActivity(title: "Musée d'Art Moderne de Paris", nameOf:"Musée d'Art Moderne"),
            ImageOneActivity(title: "Musée d'Orsay", nameOf:"Musée d'Orsay"),
            ImageOneActivity(title: "Musée-Bourdelle-12", nameOf:"Musée Bourdelle"),
            ImageOneActivity(title: "Musee-Carnavalet-collections-Cabinet-Colbert-de-Villacerf-1", nameOf:"Musee-Carnavalet"),
            ImageOneActivity(title: "pierre_antoine_-_musee_cognacq-jay", nameOf:"Cognacq Jay"),
            ImageOneActivity(title: "Sculpture-de-Zadkine---Lot-Tourisme---C.-Novello-2", nameOf:"culpture de Zadkine")
        ])
    ]
    var concerts =  [CategoryActivity(name: "Concerts", images: [
      ImageOneActivity(title: "bruce-springsteen", nameOf: "Bruce Springsteen"),
        ImageOneActivity(title: "ed-sheeran", nameOf: "Ed Sheeran"),
        ImageOneActivity(title: "YFLMP7IDKNDLVAV6XBI7556H2E", nameOf:"Depeche mode"),
        ImageOneActivity(title: "Madonna", nameOf: "Madonna")
    ])]
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .leading){
                ForEach(cats) { cat in
                    Text(cat.name)
                        .padding()
                        .font(.title)
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(cat.images) { image in
                                VStack{
                                    ImageRowActivity(image: image)
                                }
                            }
                        }
                    }
                }
                ForEach(concerts) { favorite in
                    Text(favorite.name)
                        .padding()
                        .font(.title)
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(favorite.images) { image in
                                VStack{
                                    ConcertRow(image: image)
                                }
                            }
                        }
                    }
                }
            }
        }
//        Spacer()
    }
}

struct ImageListActivity_Previews: PreviewProvider {
    static var previews: some View {
        ImageListActivity()
    }
}
