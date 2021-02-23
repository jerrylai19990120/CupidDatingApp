//
//  AddMediaButton.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-22.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct AddMediaButton: View {
    var body: some View {
        VStack {
            ZStack {
                Image(systemName: "camera.fill").resizable().aspectRatio(contentMode: .fit).foregroundColor(.white).padding(.all, 20).frame(width: 76, height: 76)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 247/255, green: 98/255, blue: 89/255), Color(red: 247/255, green: 85/255, blue: 98/255), Color(red: 245/255, green: 39/255, blue: 119/255)]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(76)
                
                Image(systemName: "plus").resizable().aspectRatio(contentMode: .fit)
                    .padding(.all, 8)
                    .frame(width: 30, height: 30).foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                    .background(Color.white).cornerRadius(30).offset(x: 30, y: 28)
                    .shadow(color: .gray, radius: 3)
            }
            
            Text("ADD MEDIA").foregroundColor(.gray)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
        }
    }
}

struct AddMediaButton_Previews: PreviewProvider {
    static var previews: some View {
        AddMediaButton()
    }
}
