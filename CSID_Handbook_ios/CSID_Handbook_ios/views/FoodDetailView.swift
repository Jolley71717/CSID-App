//
//  FoodDetailView.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 6/25/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared_handbook

struct FoodDetailView: View {
    var food: SmallFoodItem
    
    var body: some View {
        ScrollView {
            HStack {
                Text("Type: ")
                Text(food.getFoodType())
                    .font(.title2)
            }
            
            Group {
                HStack {
                    Text("Portion Size")
                        .padding()
                    Text(food.portionSizeUnit)
                }
                HStack {
                    Text("Portion Amount")
                    // todo add conditional formatting based on glucose content or something
                    // Add configurable alerts based on thresholds of certain items and amounts
                    Text(food.portionSizeAmount.description)
                }
            }
            
            Group {
                HStack {
                    Text("Total Sugars: ")
                    Text(
                        food.totalSugars
                        .truncate(places: 2)
                        .description
                    )
                }
                HStack {
                    Text("Glucose: ")
                    Text(food.glucose
                        .truncate(places: 2)
                        .description)
                }.frame(alignment:.trailing)
                HStack {
                    Text("Fructose: ")
                    Text(food.fructose
                        .truncate(places: 2)
                        .description)
                }
                HStack {
                    Text("Sucrose: ")
                    Text(food.sucrose
                        .truncate(places: 2)
                        .description)
                }
                HStack {
                    Text("Lactose: ")
                    Text(food.lactose
                        .truncate(places: 2)
                        .description)
                }
                HStack {
                    Text("Maltose: ")
                    Text(food.maltose
                        .truncate(places: 2)
                        .description)
                }
                HStack {
                    Text("Starch: ")
                    Text(food.starch
                        .truncate(places: 2)
                        .description)
                }
            }
//            Text(food.type)
            Spacer()
            VStack {
                CircleImage()
            }
        
        }
        .padding()
        .navigationTitle(
            Text(food.getFoodDescription())
            .font(.title)
        )
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
    /**
     * Splits a string at the first occurrence of a delimiter string
     * ## Examples:
     * splitAtFirst(str: "element=value", delimiter: "=") // "element", "value"
     */
    func splitAtFirst(str: String, delimiter: String) -> (strippedOut: String, result: String)? {
       guard let upperIndex = (str.range(of: delimiter)?.upperBound), let lowerIndex = (str.range(of: delimiter)?.lowerBound) else { return nil }
       let firstPart: String = .init(str.prefix(upTo: lowerIndex))
       let lastPart: String = .init(str.suffix(from: upperIndex))
       return (firstPart, lastPart)
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView(food: candies[0])
    }
}
