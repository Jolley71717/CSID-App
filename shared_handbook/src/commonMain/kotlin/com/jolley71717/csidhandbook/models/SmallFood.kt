package com.jolley71717.csidhandbook.models

import kotlinx.serialization.Serializable

@Serializable
data class FoodWrapper(
    val foodItems: List<SmallFoodItem>
)

@Serializable
data class SmallFoodItem(
    val description: String = "",
    val portionSizeAmount: Float = 0.00F,
    val portionSizeUnit: String = "",
    val totalSugars: Float = 0.00F,
    val glucose: Float = 0.00F,
    val fructose: Float = 0.00F,
    val sucrose: Float = 0.00F,
    val lactose: Float = 0.00F,
    val maltose: Float = 0.00F,
    val starch: Float = 0.00F,
    val type: String = ""
) {
    fun foodDescription() = description
}
