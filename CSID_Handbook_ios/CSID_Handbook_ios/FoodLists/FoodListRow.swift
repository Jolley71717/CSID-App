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
            Text(foodItem.foodDescription())
            Spacer()
            Text(foodItem.sucrose.description)
            Text(foodItem.glucose.description)
            
        }
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
