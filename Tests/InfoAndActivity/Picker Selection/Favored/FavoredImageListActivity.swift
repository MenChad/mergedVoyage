//
//  ImageListActivity.swift
//  Tests
//
//  Created by apprenant48 on 27/10/2022.
//

import SwiftUI


struct FavoredImageListActivity: View {
    var cats = [
        //        ImageOneActivity(
        CategoryActivity(name: "Restaurants", images: [
            ImageOneActivity(title: "Hôtel-Barrière-Le-Fouquet’s-Paris-Terrasse-restaurant-Le-Joy-|-630x405-|-©-Adrien-Hue", nameOf: "Le-Fouquet"),
            ImageOneActivity(title: "PPR-OiseauBlanc", nameOf: "Oiseau Blanc"),
            ImageOneActivity(title: "Terrasse-Restaurant-Coco-Paris-Opéra-Garnier", nameOf: "Coco"),
            ImageOneActivity(title: "Terrasse-Restaurant-Perruche-Printemps-Haussmann-Paris", nameOf:"Perruche-Printemps"),
            ImageOneActivity(title: "under the sea",nameOf: "Under the sea")
        ])
       
    ]
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
            }
        }
//        Spacer()
    }
}

struct FavoredImageListActivity_Previews: PreviewProvider {
    static var previews: some View {
        FavoredImageListActivity()
    }
}
