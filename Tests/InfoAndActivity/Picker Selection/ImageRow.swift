//
//  ImageRow.swift
//  Tests
//
//  Created by apprenant48 on 27/10/2022.
//

import SwiftUI

struct ImageRow: View {
    var image: ImageOne
    var body: some View {
        VStack{
            Image(image.title)
                .resizable()
                .frame(width: 200, height: 137)
        }
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow(image: ImageOne(title: "paris3"))
    }
}
