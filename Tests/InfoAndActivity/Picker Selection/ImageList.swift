//
//  ImageList.swift
//  Tests
//
//  Created by apprenant48 on 27/10/2022.
//

import SwiftUI

struct ImageList: View {
    var myImages = [
        ImageOneInfo(name: "Bienvenue à Paris",
                     images: [ImageOne(title: "paris7"),
                              ImageOne(title: "paris8"),
                              ImageOne(title: "paris5"),
                              ImageOne(title: "paris4"),
                              ImageOne(title: "paris3")
                             ])
    ]
    var body: some View {
        
        VStack(alignment: .leading){
            ForEach(myImages) { image in
                /*@START_MENU_TOKEN@*/Text(image.name)/*@END_MENU_TOKEN@*/
                    .padding()
                    .font(.title)
                ScrollView(.horizontal){
                    HStack{
                        ForEach(image.images) { image in
                            VStack{
                                ImageRow(image: image)
                            }
                        }
                    }
                    
                }
            }
        }
    }
}




struct ImageList_Previews: PreviewProvider {
    static var previews: some View {
        ImageList()
    }
}


