//
//  CircleImage.swift
//  CSID_Handbook_ios
//
//  Created by Luke Dutton on 6/7/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("structure")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
