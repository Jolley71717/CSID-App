package com.jolley71717.csidhandbook.json

import com.jolley71717.csidhandbook.utils.MainActivity

actual object FoodJson {
    actual val FOOD_CANDY = MR.files.FOOD_CANDY.readText(context = MainActivity.instance)
    actual val FOOD_COMMERCIAL_ENTREES = MR.files.FOOD_COMMERCIAL_ENTREES.readText(context = MainActivity.instance)
    actual val FOOD_DESSERTS = MR.files.FOOD_DESSERTS.readText(context = MainActivity.instance)
    actual val FOOD_EGGS = MR.files.FOOD_EGGS.readText(context = MainActivity.instance)
    actual val FOOD_FATS = MR.files.FOOD_FATS.readText(context = MainActivity.instance)
    actual val FOOD_FRUIT = MR.files.FOOD_FRUIT.readText(context = MainActivity.instance)
    actual val FOOD_GRAIN = MR.files.FOOD_GRAIN.readText(context = MainActivity.instance)
    actual val FOOD_IMITATION_MILK = MR.files.FOOD_IMITATION_MILK.readText(context = MainActivity.instance)
    actual val FOOD_MEAT = MR.files.FOOD_MEAT.readText(context = MainActivity.instance)
    actual val FOOD_MILK = MR.files.FOOD_MILK.readText(context = MainActivity.instance)
    actual val FOOD_MISC = MR.files.FOOD_MISC.readText(context = MainActivity.instance)
    actual val FOOD_SOUPS = MR.files.FOOD_SOUPS.readText(context = MainActivity.instance)
    actual val FOOD_VEGETABLES = MR.files.FOOD_VEGETABLES.readText(context = MainActivity.instance)
    actual val categories = listOf(
        ::FOOD_CANDY.name,
        ::FOOD_COMMERCIAL_ENTREES.name,
        ::FOOD_DESSERTS.name,
        ::FOOD_EGGS.name,
        ::FOOD_FATS.name,
        ::FOOD_FRUIT.name,
        ::FOOD_GRAIN.name,
        ::FOOD_IMITATION_MILK.name,
        ::FOOD_MEAT.name,
        ::FOOD_MILK.name,
        ::FOOD_MISC.name,
        ::FOOD_SOUPS.name,
        ::FOOD_VEGETABLES.name
    )
}