//
//  EditInfoButton.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-22.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct EditInfoButton: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil").resizable().aspectRatio(contentMode: .fit).padding(.all, 20).foregroundColor(.white).frame(width: 76, height: 76).background(LinearGradient(gradient: Gradient(colors: [Color(red: 247/255, green: 98/255, blue: 89/255), Color(red: 247/255, green: 85/255, blue: 98/255), Color(red: 245/255, green: 39/255, blue: 119/255)]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(76)
            
            Text("EDIT INFO").foregroundColor(.gray)
            .font(.system(size: 16, weight: .semibold, design: .rounded))
        }
    }
}

struct EditInfoButton_Previews: PreviewProvider {
    static var previews: some View {
        EditInfoButton()
    }
}
