//
//  FilterButton.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 7/10/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared_handbook

struct FilterButton: View {
    @ObservedObject var modelData: ModelData
    @State private var isShowingDetailView: Bool = false
    var body: some View {
        Group {
            Button {
                isShowingDetailView = true
            } label: {
                Label("Set Filters", systemImage: "slider.horizontal.3")
                    .labelStyle(.iconOnly)
                    .frame(maxHeight: 40, alignment: .center)
            }.navigate(to: SearchFilterView(modelData: modelData), when: $isShowingDetailView)
//            NavigationLink(
//                destination: SearchFilterView(),
//                isActive: $isShowingDetailView
//            ) { EmptyView() }.frame(maxWidth: 1, maxHeight: 1)
            
        }
    }
}


struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(modelData: ModelData())
    }
}
