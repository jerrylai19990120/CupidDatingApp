//
//  ReceiveMessageBox.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-23.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct ReceiveMessageBox: View {
    
    @State var msgBody = ""
    
    var body: some View {
        
        HStack(alignment: .lastTextBaseline) {
            Image("examplePic").resizable().renderingMode(.original).aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width: 66, height: 66)
                .cornerRadius(66)
                
            Text("The simplest alignment option is to use the alignment parameter of a frame() modifier. Remember, a text view always uses the exact width and height required to show its text, but when we")
                    .font(.system(size: 22, weight: .medium, design: .default))
                .padding()
                .frame(width: 300)
                .background(Color(red: 231/255, green: 231/255, blue: 231/255))
                .cornerRadius(30)
        }
    }
}

struct ReceiveMessageBox_Previews: PreviewProvider {
    static var previews: some View {
        ReceiveMessageBox()
    }
}
