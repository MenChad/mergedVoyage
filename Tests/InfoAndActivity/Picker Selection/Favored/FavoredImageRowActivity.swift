////
////  ImageRowActivity.swift
////  Tests
////
////  Created by apprenant48 on 28/10/2022.
////
//
import SwiftUI

struct FavoredImageRowActivity: View {
    var image: ImageOneActivity
    var body: some View {
        VStack{
            Image(image.title)
                .resizable()
                .frame(width: 200, height: 137)
                .overlay {
                    VStack {
                        HStack {
                            Spacer()
                            FavoredButton()
                                .padding()
                        }
                        Spacer()
                    }
                }
            Text(image.nameOf)
                .padding()
            
        }
    }
}

struct FavoredImageRowActivity_Previews: PreviewProvider {
    static var previews: some View {
        FavoredImageRowActivity(image: ImageOneActivity(title: "paris3", nameOf: "Louvre"))
    }
}
