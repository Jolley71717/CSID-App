package com.jolley71717.csidhandbook.json

import kotlinx.serialization.json.Json
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class JsonTest {

    private val json = Json { ignoreUnknownKeys = true }

    @Test
    fun testJsonRead() {
        val foodList2 = FoodJson.FOOD_CANDY
        val categories = FoodJson.categories
        assertTrue(foodList2.isNotBlank())
        assertEquals("FOOD_CANDY", categories[0])
    }
}
