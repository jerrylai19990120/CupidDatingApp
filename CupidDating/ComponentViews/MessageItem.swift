//
//  MessageItem.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-22.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct MessageItem: View {
    var body: some View {
        GeometryReader {
            gr in
            HStack {
                Image("examplePic").resizable().aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(width: 66, height: 66)
                    .cornerRadius(66)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Sabrina")
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                    Text("This is the best date I had in a while, I would love to go on another one.").foregroundColor(.gray).font(.system(size: 16, weight: .medium, design: .rounded)).lineLimit(1)
                }
                }.frame(width: gr.size.width)
        
        }.frame(height: 80)
    }
}

struct MessageItem_Previews: PreviewProvider {
    static var previews: some View {
        MessageItem()
    }
}
