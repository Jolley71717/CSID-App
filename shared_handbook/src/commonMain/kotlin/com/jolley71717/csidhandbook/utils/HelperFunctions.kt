package com.jolley71717.csidhandbook.utils

import com.jolley71717.csidhandbook.models.FoodJsonWrapper
import com.jolley71717.csidhandbook.models.FoodWrapper
import com.jolley71717.csidhandbook.models.SmallFoodItem

expect object HelperFunctions {
    fun wrapperToFoodItems(foodWrapper: FoodJsonWrapper): FoodWrapper
    fun wrappersToFoodItems(foodWrappers: List<FoodJsonWrapper>): List<SmallFoodItem>
}
