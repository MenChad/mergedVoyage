//
//  InfoDetail.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct InfoDetail: View {
    @State var chosenContent = "Info"
    var body: some View {
        ScrollView(.vertical){
            MyPickerView(chosenContent: $chosenContent)
            switch chosenContent {
            case "Info":
                ScrollView(.vertical){
                    ImageList()
                    RevealDetails()
                }
            default:
//                VStack{
                    ImageListActivity()
//                }
            }
        }
    }
    
}

struct InfoDetail_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetail()
    }
}
