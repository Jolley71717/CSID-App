//
//  SearchFilterView.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 7/10/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared_handbook

struct SearchFilterView: View {
    @ObservedObject var modelData: ModelData
    var body: some View {
        List {
            ForEach(modelData.searchFilters.indices, id: \.self) { index in
                FilterToggle(
                    isSet: $modelData.searchFilters[index].isEnabled,
                    filterDescription: modelData.searchFilters[index].filterName
                )
            }
        }
    }
}

////////////////////////////////////**
//@State var myModels: [MyModel] = [
//       MyModel(id: "1", name: "First Model", notify: false),
//       MyModel(id: "2", name: "Second Model", notify: true)
//   ]
//
//   var body: some View {
//       NavigationView {
//           List($myModels.identified(by: \.id.value)) { (myModel : Binding<MyModel>) in
//               Toggle(isOn: myModel.notify) {
//                   Text(myModel.value.name)
//               }
//           }
//               .navigationBarTitle(Text("My Models"))
//       }
//   }

//####

struct SearchFilterView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFilterView(modelData: ModelData())
    }
}
