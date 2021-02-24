//
//  PictureGrid.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-24.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct PictureGrid: View {
    var body: some View {
        GeometryReader { gr in
            VStack {
                HStack(spacing: 20) {
                    PicturePlaceHolder(index: 1)
                    PicturePlaceHolder(index: 2)
                    PicturePlaceHolder(index: 3)
                }.padding().frame(height: gr.size.height*0.23)
                
                HStack(spacing: 20) {
                    PicturePlaceHolder(index: 4)
                    PicturePlaceHolder(index: 5)
                    PicturePlaceHolder(index: 6)
                }.padding().frame(height: gr.size.height*0.23)
                
                HStack(spacing: 20) {
                    PicturePlaceHolder(index: 7)
                    PicturePlaceHolder(index: 8)
                    PicturePlaceHolder(index: 9)
                }.padding().frame(height: gr.size.height*0.23)
            }
            
        }//geometry reader
    }
}

struct PictureRow_Previews: PreviewProvider {
    static var previews: some View {
        PictureGrid()
    }
}
