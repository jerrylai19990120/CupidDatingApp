//
//  SettingsButton.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-22.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct SettingsButton: View {
    var body: some View {
        VStack {
            Image(systemName: "gear").resizable().aspectRatio(contentMode: .fit).padding(.all, 20).foregroundColor(.gray).frame(width: 76, height: 76).background(Color(red: 245/255, green: 247/255, blue: 251/255)).cornerRadius(76)
            
            Text("SETTINGS").foregroundColor(.gray)
            .font(.system(size: 16, weight: .semibold, design: .rounded))
        }
    }
}

struct SettingsButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButton()
    }
}
