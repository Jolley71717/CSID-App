package com.jolley71717.csidhandbook.utils

import com.jolley71717.csidhandbook.models.FoodJsonWrapper
import com.jolley71717.csidhandbook.models.FoodWrapper
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json

actual object HelperFunctions {
    private val jsonMapper = Json { ignoreUnknownKeys = true }
    actual fun wrapperToFoodItems(foodWrapper: FoodJsonWrapper): FoodWrapper = jsonMapper.decodeFromString(foodWrapper.json)
}
