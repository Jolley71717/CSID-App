//
//  FoodsList.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 6/25/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared_handbook

struct FoodsListView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredFoods: [SmallFoodItem] {
        modelData.allTheFoods.filter { food in
            (!showFavoritesOnly || food.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only").frame(alignment: .trailing)
                }.padding()
                    .frame(maxWidth: 300, maxHeight: 50, alignment: .trailing)
                HStack {
                    Spacer().frame(minWidth: 20)
                    Text("Description").frame(minWidth: 90, alignment: .center)
                        
                    Spacer().frame(minWidth: 1, idealWidth: 10, maxWidth: 120)
                    Text("sucrose").frame(width: 75, alignment: .center)
                    Text("glucose").frame(width: 75, alignment: .center)
                    
                }.frame(maxWidth: .infinity)
                    .padding()
                List {
                    ForEach(filteredFoods) { foodItem in
                        NavigationLink {
                            FoodDetailView(food: foodItem)
                        } label: {
                            FoodListRow(foodItem: foodItem).frame(maxWidth: .infinity)
                        }
                    }
                }
            }
            .navigationTitle(Text("Foods"))
            
        }.frame(maxWidth: .infinity)
    }
}

struct FoodsListView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 12 Pro Max"], id: \.self) { deviceName in
            FoodsListView()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            
        }
    }
}
