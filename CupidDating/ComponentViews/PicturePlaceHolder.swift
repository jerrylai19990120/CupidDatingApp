//
//  PicturePlaceHolder.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-24.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct PicturePlaceHolder: View {
    
    var index = 1
    
    var body: some View {
        ZStack {
            GeometryReader {
                gr1 in
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(
                        style: StrokeStyle(lineWidth: 2, dash: [15])
                ).foregroundColor(.gray)
                    .background(Color(red: 234/255, green: 237/255, blue: 242/255))
                
                Text("\(self.index)").foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold, design: .default))
                
                Image(systemName: "plus").resizable().aspectRatio(contentMode: .fit)
                    .padding(.all, 8)
                    .frame(width: 40, height: 40).foregroundColor(.white)
                    .background(Color(red: 245/255, green: 39/255, blue: 119/255)).cornerRadius(30)
                    .shadow(color: .gray, radius: 3)
                    .offset(x: gr1.size.width-26, y: gr1.size.height-26)
            }
            
        }
    }
}

struct PicturePlaceHolder_Previews: PreviewProvider {
    static var previews: some View {
        PicturePlaceHolder()
    }
}
