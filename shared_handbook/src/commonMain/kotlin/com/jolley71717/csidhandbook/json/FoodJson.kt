package com.jolley71717.csidhandbook.json

import com.jolley71717.csidhandbook.models.FoodJsonWrapper
import kotlin.jvm.JvmStatic

expect object FoodJson {
    @JvmStatic val FOOD_CANDY: FoodJsonWrapper
    @JvmStatic val FOOD_COMMERCIAL_ENTREES: FoodJsonWrapper
    @JvmStatic val FOOD_DESSERTS: FoodJsonWrapper
    @JvmStatic val FOOD_EGGS: FoodJsonWrapper
    @JvmStatic val FOOD_FATS: FoodJsonWrapper
    @JvmStatic val FOOD_FRUIT: FoodJsonWrapper
    @JvmStatic val FOOD_GRAIN: FoodJsonWrapper
    @JvmStatic val FOOD_IMITATION_MILK: FoodJsonWrapper
    @JvmStatic val FOOD_MEAT: FoodJsonWrapper
    @JvmStatic val FOOD_MILK: FoodJsonWrapper
    @JvmStatic val FOOD_MISC: FoodJsonWrapper
    @JvmStatic val FOOD_SOUPS: FoodJsonWrapper
    @JvmStatic val FOOD_VEGETABLES: FoodJsonWrapper
    @JvmStatic val categories: List<String>
}
