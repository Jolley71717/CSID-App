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
    @EnvironmentObject var modelData: ModelData
    var food: SmallFoodItem
    
    var foodIndex: Int {
        modelData.allTheFoods.firstIndex(where: {$0.id == food.id})!
    }
    
    var body: some View {
        ScrollView {
            Text(food.getFoodDescription())
            .font(.title)
            .frame(maxWidth: .infinity)
            .fixedSize(horizontal: false, vertical: true)
            HStack {
                Text("Type: ")
                Text(food.getFoodType())
                    .font(.title2)
            }
            HStack {
                FavoriteButton(isSet: $modelData.allTheFoods[foodIndex].isFavorite)
            }
            
            Group {
                HStack {
                    Text("Portion Size:")
                    Text(food.portionSizeUnit)
                }
                HStack {
                    Text("Portion Amount")
                    // todo add conditional formatting based on glucose content or something
                    // Add configurable alerts based on thresholds of certain items and amounts
                    Text(food.portionSizeAmount.description)
                }
            }.padding()
            
            // todo convert all this stuff into a list where I take all the list items and pass it into an object that does all this crap
            
            Group {
                HStack {
                    Text("Total Sugars: ")
                    Text(
                        food.totalSugars
                        .truncate(places: 2)
                        .description
                    )
                }.frame(maxWidth: 500)
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
    static let modelData = ModelData()
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 12 Pro Max"], id: \.self) { deviceName in
            FoodDetailView(food: modelData.allTheFoods[0])
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            
        }
        
    }
}
