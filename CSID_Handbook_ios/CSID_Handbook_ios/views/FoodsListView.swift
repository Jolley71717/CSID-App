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
    var body: some View {
        
        NavigationView {
        VStack {
            HStack {
                Text("Description").frame(width: 200, alignment: .leading)
                    
                Spacer()
                Text("sucrose").frame(width: 75)
                Text("glucose").frame(width: 75)
                
            }.frame(width: 300.0)
            
                List(candies, id: \.id) { foodItem in
                    NavigationLink {
                        FoodDetailView(food: foodItem)
                    } label: {
                        FoodListRow(foodItem: foodItem)
                    }
                }
        }
        .navigationTitle(Text("Foods"))
        }
    }
}

struct FoodsListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodsListView()
    }
}
