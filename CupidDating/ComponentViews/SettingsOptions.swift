//
//  SettingsOptions.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-24.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import SwiftUI

struct SettingsOptions: View {
    
    var gr: GeometryProxy
    
    var body: some View {
        
        List {
            
            Text("DISCOVERY SETTINGS").foregroundColor(Color(red: 245/255, green: 39/255, blue: 119/255))
                .font(.system(size: 18, weight: .semibold, design: .default))
        }.listStyle(GroupedListStyle())

    }
}

struct SettingsOptions_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { gr in
            SettingsOptions(gr: gr)
        }
    }
}
