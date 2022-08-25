package com.jolley71717.csidhandbook.models

import kotlinx.serialization.Serializable

@Serializable
data class FoodFilter(
    val filterName: String = "",
    var isEnabled: Boolean = false,
    val filterType: String = "Toggle"
)
