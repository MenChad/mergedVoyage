//
//  DetailsView.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct DetailsView: View {
    let cityItem: City
     
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    Text(cityItem.flag)
                      .font(.largeTitle)
                      .frame(width: 50, height: 50)
                      .padding(.trailing, 5)
                }
                Spacer()
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(cityItem.name), displayMode: .automatic)
    }
}

