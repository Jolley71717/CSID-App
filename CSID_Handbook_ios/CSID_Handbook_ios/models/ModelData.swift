//
//  ModelData.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 6/9/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import Foundation
import shared_handbook
import Combine

final class ModelData: ObservableObject {
    @Published var candies: [SmallFoodItem] = load(FoodJson().FOOD_CANDY)
    @Published var commercial_entrees: [SmallFoodItem] = load(FoodJson().FOOD_COMMERCIAL_ENTREES)
    @Published var desserts: [SmallFoodItem] = load(FoodJson().FOOD_DESSERTS)
    @Published var eggs: [SmallFoodItem] = load(FoodJson().FOOD_EGGS)
    @Published var fats: [SmallFoodItem] = load(FoodJson().FOOD_FATS)
    @Published var fruit: [SmallFoodItem] = load(FoodJson().FOOD_FRUIT)
    @Published var grain: [SmallFoodItem] = load(FoodJson().FOOD_GRAIN)
    @Published var imitation_milk: [SmallFoodItem] = load(FoodJson().FOOD_IMITATION_MILK)
    @Published var meat: [SmallFoodItem] = load(FoodJson().FOOD_MEAT)
    @Published var milk: [SmallFoodItem] = load(FoodJson().FOOD_MILK)
    @Published var misc: [SmallFoodItem] = load(FoodJson().FOOD_MISC)
    @Published var soups: [SmallFoodItem] = load(FoodJson().FOOD_SOUPS)
    @Published var vegetables: [SmallFoodItem] = load(FoodJson().FOOD_VEGETABLES)
    @Published var allTheFoods: [SmallFoodItem] = load([FoodJson().FOOD_CANDY, FoodJson().FOOD_COMMERCIAL_ENTREES, FoodJson().FOOD_DESSERTS, FoodJson().FOOD_EGGS, FoodJson().FOOD_FATS, FoodJson().FOOD_FRUIT, FoodJson().FOOD_GRAIN, FoodJson().FOOD_IMITATION_MILK, FoodJson().FOOD_MEAT, FoodJson().FOOD_MILK, FoodJson().FOOD_MISC, FoodJson().FOOD_SOUPS, FoodJson().FOOD_VEGETABLES])
    @Published var searchFilters: [FoodFilter] = loadFilters(FoodJson().categories)
}

func load(_ foodWrapper: FoodJsonWrapper) -> [SmallFoodItem] {
    return HelperFunctions().wrapperToFoodItems(foodWrapper: foodWrapper).foodItems
}

func load(_ foodWrappers: [FoodJsonWrapper]) -> [SmallFoodItem] {
    return HelperFunctions().wrappersToFoodItems(foodWrappers: foodWrappers)
}

func loadFilters(_ foodCategories: [String]) -> [FoodFilter] {
    return foodCategories.map { category in
        FoodFilter(filterName: category, isEnabled: false, filterType: "Toggle")
    }
}
