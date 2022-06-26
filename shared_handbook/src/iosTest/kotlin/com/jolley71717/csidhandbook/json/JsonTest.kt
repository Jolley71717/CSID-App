package com.jolley71717.csidhandbook.json

import com.jolley71717.csidhandbook.models.FoodWrapper
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import kotlin.math.roundToInt
import kotlin.test.Test
import kotlin.test.assertEquals

class JsonTest {

    private val json = Json { ignoreUnknownKeys = true }

    @Test
    fun testJsonRead() {
        val foodList2 = FoodJson.FOOD_CANDY
        val categories = FoodJson.categories
        val foodWrapper = json.decodeFromString<FoodWrapper>(foodList2.json).foodItems.first()

        assertEquals(1.309, foodWrapper.starch?.let { (it * 1000).roundToInt() / 1000.0 } ?: 0F, "yeet")
        assertEquals("FOOD_CANDY", categories[0])
    }
}
