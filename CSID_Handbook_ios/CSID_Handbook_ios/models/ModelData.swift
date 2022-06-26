//
//  ModelData.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 6/9/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import Foundation
import shared_handbook

var candies: [SmallFoodItem] = load(FoodJson().FOOD_CANDY)

func load(_ foodWrapper: FoodJsonWrapper) -> [SmallFoodItem] {
    return HelperFunctions().wrapperToFoodItems(foodWrapper: foodWrapper).foodItems
}
