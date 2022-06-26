package com.jolley71717.csidhandbook.utils

import com.jolley71717.csidhandbook.models.FoodJsonWrapper
import com.jolley71717.csidhandbook.models.FoodWrapper

expect object HelperFunctions {
    fun wrapperToFoodItems(foodWrapper: FoodJsonWrapper): FoodWrapper
}
