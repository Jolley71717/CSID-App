//
//  FilterToggle.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 7/10/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI

struct FilterToggle: View {
    @Binding var isSet: Bool
    var filterDescription: String

    var body: some View {
        Toggle(isOn: $isSet) {
            Text(filterDescription).frame(alignment: .trailing)
        }.padding()
            .frame(maxWidth: 400, maxHeight: 50, alignment: .trailing)
    }
}

struct FilterToggle_Previews: PreviewProvider {
    static var previews: some View {
        FilterToggle(isSet: .constant(true), filterDescription: "Candy")
    }
}


