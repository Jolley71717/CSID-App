package com.jolley71717.csidhandbook

import kotlinx.serialization.json.Json


class JsonTest {

    private val json = Json { ignoreUnknownKeys = true }

    fun testJsonRead() {
//        val foodList = FoodJson.FOUNDATION_FOOD_JSON
//        assertTrue(foodList.isNotBlank())
//        val decodedFood = json.decodeFromString<FoodList>(foodList)
//        assertTrue(decodedFood.foundationFoods.isNotEmpty())
//        val jsonFood = json.encodeToString(decodedFood)
//        println(jsonFood)
    }
}
