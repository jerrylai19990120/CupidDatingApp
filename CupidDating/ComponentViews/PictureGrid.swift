//
//  PictureGrid.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-24.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct PictureGrid: View {
    
    var gr: GeometryProxy
    
    var body: some View {
        
            VStack {
                HStack(spacing: 20) {
                    PicturePlaceHolder(index: 1)
                    PicturePlaceHolder(index: 2)
                    PicturePlaceHolder(index: 3)
                }.padding(.bottom).frame(height: gr.size.height*0.23)
                
                HStack(spacing: 20) {
                    PicturePlaceHolder(index: 4)
                    PicturePlaceHolder(index: 5)
                    PicturePlaceHolder(index: 6)
                }.padding(.bottom).frame(height: gr.size.height*0.23)
                
                HStack(spacing: 20) {
                    PicturePlaceHolder(index: 7)
                    PicturePlaceHolder(index: 8)
                    PicturePlaceHolder(index: 9)
                }.padding(.bottom).frame(height: gr.size.height*0.23)
            }
            

    }
}

struct PictureRow_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { gr in
            PictureGrid(gr: gr)
        }
       
    }
}
