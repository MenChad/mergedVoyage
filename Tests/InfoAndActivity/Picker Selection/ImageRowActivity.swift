////
////  ImageRowActivity.swift
////  Tests
////
////  Created by apprenant48 on 28/10/2022.
////
//
import SwiftUI

struct ImageRowActivity: View {
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
                            FavoriteButton()
                                .padding()
                        }
                        Spacer()
                    }
                }
            Button {
            } label: {
                NavigationLink(destination: InfoDetail()){
                    Text(image.nameOf)
                        .foregroundColor(.black)
                        .padding()
                }
            }
        }
    }
}

struct ImageRowActivity_Previews: PreviewProvider {
    static var previews: some View {
        ImageRowActivity(image: ImageOneActivity(title: "paris3", nameOf: "Louvre"))
    }
}
