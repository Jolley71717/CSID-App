//
//  SearchFilter.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 7/9/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import Foundation
import shared_handbook

func multiFilter(_ foodItem: SmallFoodItem, searchText: String) -> Bool {
    if (searchText.isEmpty) {
        return true
    } else {
        let searArr = searchText.components(separatedBy: " ")
        return searArr.filter {
            foodItem.getFoodDescription().localizedCaseInsensitiveContains($0)
        }.count == searArr.count
    }
}

