//
//  SendMessageBox.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-23.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct SendMessageBox: View {
    
    @State var msgBody = ""
    
    var body: some View {
        
        HStack {
            Spacer()
            Text("The simplest alignment option is to use the alignment parameter of a frame() modifier. Remember, a text view always uses the exact width and height required to show its text, but when we")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 18/255, green: 199/255, blue: 253/255))
                .cornerRadius(30).frame(width: 330)
        }
    }
}

struct SendMessageBox_Previews: PreviewProvider {
    static var previews: some View {
        SendMessageBox()
    }
}
