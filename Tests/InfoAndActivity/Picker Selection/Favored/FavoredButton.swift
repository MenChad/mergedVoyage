//
//  FavoriteButton.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct FavoredButton: View {
    @State var isSet = true
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .red : .gray)
                .background{
                    Image(systemName: "circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
        }
       
    }
}

struct FavoredButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoredButton()
    }
}
