//
//  ModelExtensions.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 6/8/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import Foundation
import SwiftUI
import shared_handbook

extension FoodWrapper {
    func getImage(imageName: String) -> Image {
        return Image(imageName)
    }
}

extension SmallFoodItem : Identifiable {}


extension Float {
    func truncate(places : Int)-> Float {
        return Float(floor(pow(10.0, Float(places)) * self)/pow(10.0, Float(places)))
    }
}


