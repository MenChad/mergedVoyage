//
//  ConcertRow.swift
//  Tests
//
//  Created by apprenant48 on 06/11/2022.
//

import SwiftUI

struct ConcertRow: View {
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
//            Button {
//            } label: {
//                NavigationLink(destination: FavoriteButton()){
//                    Text(image.nameOf)
//                        .foregroundColor(.black)
//                        .padding()
//                }
//            }
            Button {
            } label: {
                Link(destination: URL(string: "https://www.fnacspectacles.com/event/depeche-mode-memento-mori-world-tour-groupama-stadium-decines-charpieu-15978327/")!){
                    Text(image.nameOf)
                        .foregroundColor(.black)
                        .padding()
                }

            }
        }
    }
}

struct ConcertRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRowActivity(image: ImageOneActivity(title: "paris3", nameOf: "Louvre"))
    }
}
