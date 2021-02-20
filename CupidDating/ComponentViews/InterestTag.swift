//
//  InterestTag.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-20.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct InterestTag: View {
    
    var title: String = "Interests"
    
    var colorIndex: Int = Int.random(in: 0...5)
    var colors: [Color:Color] = [
        Color("Color1"):Color("Color1.1"),
        Color("Color2"):Color("Color2.1"),
        Color("Color3"):Color("Color3.1"),
        Color("Color4"):Color("Color4.1"),
        Color("Color5"):Color("Color5.1"),
        Color("Color6"):Color("Color6.1")
    ]
    
    var body: some View {
        Text("\(title)")
            .font(.system(size: 16, weight: .semibold, design: .default))
            .padding()
            .background(Array(colors.keys)[colorIndex])
            .foregroundColor(colors[Array(colors.keys)[colorIndex]])
        .cornerRadius(18)
        
    }
}

struct InterestTag_Previews: PreviewProvider {
    static var previews: some View {
        InterestTag()
    }
}
