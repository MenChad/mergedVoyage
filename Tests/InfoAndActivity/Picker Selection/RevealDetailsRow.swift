//
//  RevealDetailsRow.swift
//  Tests
//
//  Created by apprenant48 on 27/10/2022.
//

import SwiftUI

struct RevealDetailsRow: View {
    var detail: DropDown
    @State var revealDetails = false
    var body: some View {
        DisclosureGroup(detail.title, isExpanded: $revealDetails) {
            Text(detail.content)
        }
        .padding(.horizontal, 30)
//        .font(.title)
//        .listRowSeparator(.hidden)
    }
}

struct RevealDetailsRow_Previews: PreviewProvider {
    static var previews: some View {
        RevealDetailsRow(detail: DropDown(title: "Documents", content: "dsqdfqsdfbqsjkdbqsjdbqs"))
    }
}
