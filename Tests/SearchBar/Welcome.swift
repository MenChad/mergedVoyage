//
//  Welcome.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct Welcome: View {
    var welcomes = [
        //        ImageOneActivity(
        CategoryActivity(name: "Mes recherches", images: [
            ImageOneActivity(title: "LondonImage", nameOf: "London"),
            ImageOneActivity(title: "beijingImage", nameOf: "Beijing"),
            ImageOneActivity(title: "ParisEffeilImage",nameOf: "Paris"),
            ImageOneActivity(title: "DublinImage", nameOf: "Dublin"),
            ImageOneActivity(title: "MexicoImage", nameOf:"Mexico")
            
        ]),
        CategoryActivity(name: "Mes suggestions", images: [
            ImageOneActivity(title: "BerlinRestaurant", nameOf:"O'Restau Berlin"),
            ImageOneActivity(title: "MarrakechCity", nameOf:"Marrakech"),
            ImageOneActivity(title: "NiceCity", nameOf:"Nice"),
            ImageOneActivity(title: "PompidouMuseum", nameOf:"Musée Pompidou"),
            ImageOneActivity(title: "Musee-Carnavalet-collections-Cabinet-Colbert-de-Villacerf-1", nameOf:"Musee-Carnavalet"),
            ImageOneActivity(title: "pierre_antoine_-_musee_cognacq-jay", nameOf:"Cognacq Jay"),
            ImageOneActivity(title: "Sculpture-de-Zadkine---Lot-Tourisme---C.-Novello-2", nameOf:"Culpture de Zadkine")
        ])
        //        CategoryActivity(name: "Mes favoris", images:
    ]
    var favorites = [
        CategoryActivity(name: "Mes favoris", images: [
            ImageOneActivity(title: "beijingImage", nameOf: "Beijing"),
            ImageOneActivity(title: "PhuketImage", nameOf: "Phuket"),
            ImageOneActivity(title: "LouvreImage", nameOf: "Louvre"),
            ImageOneActivity(title: "Terrasse-Restaurant-Perruche-Printemps-Haussmann-Paris", nameOf:"Perruche-Printemps"),
            ImageOneActivity(title: "under the sea",nameOf: "Under the sea")
        ])
    ]
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                NavigationLink(destination: SearchBarView()){
                    Text("Rechercher ")
                    Image(systemName: "magnifyingglass")
                }
                VStack(alignment: .leading){
                    ForEach(welcomes) { welcome in
                        Text(welcome.name)
                            .padding()
                            .font(.title)
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(welcome.images) { image in
                                    VStack{
                                        ImageRowActivity(image: image)
                                    }
                                }
                            }
                        }
                    }
                    ForEach(favorites) { favorite in
                        Text(favorite.name)
                            .padding()
                            .font(.title)
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(favorite.images) { image in
                                    VStack{
                                        FavoredImageRowActivity(image: image)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
