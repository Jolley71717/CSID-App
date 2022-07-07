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
            if foodItem.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
                    .foregroundColor(.clear)
            }
            VStack {
                Text(
                    foodItem.getFoodDescription()
                ).frame(width: 150, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
            }.frame(alignment: .leading)
            Spacer()
                .frame(minWidth: 10, idealWidth: 60, maxWidth: 120)
            HStack {
                Text(
                    foodItem.sucrose.truncate(places: 2).description
                ).frame(width: 50, height: 0.0)
                Text(
                    foodItem.glucose.truncate(places: 2).description
                ).frame(width: 40)
            }.frame(alignment: .trailing)
            
            
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct FoodListRow_Previews: PreviewProvider {
    static var candies = ModelData().candies
    static var favoriteCandy = candies[10].setIsFavoriteAndReturn(value: true)
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 12 Pro Max"], id: \.self) { deviceName in
            VStack {
                FoodListRow(foodItem: candies[0])
                FoodListRow(foodItem: candies[1])
                FoodListRow(foodItem: favoriteCandy)
            }.previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
