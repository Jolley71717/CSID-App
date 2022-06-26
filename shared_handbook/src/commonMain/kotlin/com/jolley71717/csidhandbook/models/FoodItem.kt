package com.jolley71717.csidhandbook.models

import kotlinx.serialization.Serializable

/**
 * These are from the US Government site
 */
@Serializable
data class FoodList(
    val FoundationFoods: List<FoodItem> = emptyList()
)

@Serializable
data class FoodItem(
    val foodClass: String? = null,
    val description: String? = null,
    val foodNutrients: List<FootNutrient> = emptyList(),
    val foodCategory: FoodCategory? = null,
    val foodPortions: List<FoodPortion> = emptyList(),
    val inputFoods: List<InputFoodWrapper> = emptyList()
)

@Serializable
data class FootNutrient(
    val id: Long? = null,
    val type: String? = null,
    val nutrient: Nutrient? = null,
    val median: Float? = null,
    val amount: Float? = null
)

@Serializable
data class FoodCategory(
    val description: String? = null
)

@Serializable
data class FoodPortion(
    val id: Long? = null,
    val measureUnit: MeasureUnit? = null,
    val modifier: String? = null,
    val gramWeight: Float? = null,
)

@Serializable
data class MeasureUnit(
    val id: Long,
    val name: String? = null,
    val abbreviation: String? = null
)

@Serializable
data class Nutrient(
    val id: Long,
    val name: String? = null,
    val unitName: String? = null
)

@Serializable
data class InputFoodWrapper(
    val id: Long,
    val foodDescription: String? = null,
    val inputFood: InputFood? = null
)

@Serializable
data class InputFood(
    val foodClass: String? = null,
    val description: String? = null,
    val foodCategory: FoodCategory? = null
)


