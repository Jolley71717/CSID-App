//
//  FoodListView.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 6/8/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared_handbook

struct FoodListRow: View {
    
    var foodItem: SmallFoodItem
    var body: some View {
        HStack {
            Text(foodItem.getFoodDescription()).frame(width: 200, alignment: .leading)
            Text(foodItem.portionSizeUnit)
            Text(foodItem.sucrose.description).frame(width: 60, height: 0.0)
            Text(foodItem.glucose.description).frame(width: 75)
            
        }.frame(height: 65)
    }
}

struct FoodListRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FoodListRow(foodItem: candies[0])
            FoodListRow(foodItem: candies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
