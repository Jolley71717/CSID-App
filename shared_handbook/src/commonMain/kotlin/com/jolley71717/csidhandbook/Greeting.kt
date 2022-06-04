package com.jolley71717.csidhandbook

class Greeting {
    fun greeting(): String {
        return "Hello, ${Platform().platform}!"
    }
}